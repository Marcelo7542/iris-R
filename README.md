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
