English description below


Análise Preditiva com o Conjunto de Dados Iris

Para este projeto, usei o conjunto de dados Iris. 

O objetivo principal foi construir um modelo preditivo capaz de classificar as espécies de flores.

Descrição do Projeto

O processo teve início com a verificação do conjunto de dados Iris, onde confirmei que não havia valores ausentes. 

Em seguida, dividi os dados em dois subconjuntos: 70% para o treinamento do modelo e 30% para teste. 

Exploração Visual dos Dados

Usei o ggplot2 para gerar gráficos de dispersão. 

Modelagem Preditiva

Usei Support Vector Machine (SVM) com kernel polinomial para treinar o modelo. 
Para otimizar o desempenho, fiz uso de validação cruzada com 4 divisões e ajustei os hiperparâmetros do modelo com uma grade de valores para o grau do polinômio, escala e custo.

Além disso, apliquei técnicas de pré-processamento como centralização e escalonamento das variáveis.

Avaliação do Modelo

Após o treinamento, o modelo foi avaliado no conjunto de teste, e utilizei a matriz de confusão para medir a performance. 
O modelo obteve uma acurácia de 91,11%, o que indica um desempenho sólido. 

A análise mais detalhada das métricas revelou que o modelo teve um ótimo desempenho na classificação das espécies setosa e versicolor, 
com uma leve queda na identificação de virginica, o que é esperado, dado que as características dessa espécie são mais difíceis de separar.

Conclusão

O modelo baseado em SVM se mostrou bastante eficiente para a classificação das espécies de flores, com uma alta taxa de acurácia. 
Embora tenha apresentado um pequeno desafio com a espécie virginica, os resultados ainda são bastante satisfatórios para este tipo de tarefa. 


Predictive Analysis with the Iris Dataset

For this project, I used the Iris dataset.

The main objective was to build a predictive model capable of classifying the flower species.

Project Description

The process began by examining the Iris dataset, where I confirmed that there were no missing values.

Next, I split the data into two subsets: 

70% for model training and 30% for testing.

Visual Data Exploration

I used ggplot2 to generate scatter plots.

Predictive Modeling

I used a Support Vector Machine (SVM) with a polynomial kernel to train the model. To optimize performance, I performed cross-validation with 4 folds and adjusted the model’s hyperparameters using a grid of values for polynomial degree, scale, and cost.

Additionally, I applied preprocessing techniques such as centering and scaling the variables.

Model Evaluation

After training, the model was evaluated on the test set, and I used the confusion matrix to measure its performance. The model achieved an accuracy of 91.11%, indicating solid performance.

A more detailed analysis of the metrics revealed that the model performed excellently in classifying the Setosa and Versicolor species, with a slight drop in identifying Virginica, which is expected since the characteristics of this species are more difficult to separate.

Conclusion

The SVM-based model proved to be quite efficient in classifying the flower species, with a high accuracy rate. Although it showed a slight challenge with the Virginica species, the results are still highly satisfactory for this type of task.
