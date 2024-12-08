library(datasets)
library(caret)
data("iris")

sum(is.na(iris))

set.seed(60)
indices_treino <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
Conjunto_treino <- iris[indices_treino,]
conjunto_test <- iris[-indices_treino,]

ggplot(Conjunto_treino, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Sepal Length vs Sepal Width", x = "Sepal Length", y = "Sepal Width") +
  theme_minimal()

ggplot(Conjunto_treino, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Petal Length vs Petal Width", x = "Petal Length", y = "Petal Width") +
  theme_minimal()

Controle <- trainControl(method = 'cv', number = 4)
grid_svm <- expand.grid(
  degree = 2:4,
  scale = c(0.1, 0.5, 1),
  C = 2^seq(-5, 5, by = 1)
)

modelo <- train(
  x = Conjunto_treino[, -which(names(Conjunto_treino) == "Species")], 
  y = Conjunto_treino$Species, 
  method = "svmPoly", 
  na.action = na.omit, 
  preProcess = c('scale', 'center'), 
  trControl = Controle, 
  tuneGrid = grid_svm
)
library(e1071)


modelo_final <- svm(
  Species ~ ., 
  data = Conjunto_treino, 
  kernel = "polynomial", 
  degree = 3, 
  scale = 0.1, 
  cost = 2
)

previsao <- predict(modelo_final, newdata = conjunto_test)

matrix_graph <- confusionMatrix(previsao, conjunto_test$Species)

print(matrix_graph)

