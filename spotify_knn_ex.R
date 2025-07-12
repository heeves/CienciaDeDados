library(class)
library(rpart)
set.seed(1984)

#
# Leia o arquivo spotify
#
spotify = read.csv(...) 
# from https://www.kaggle.com/nadintamer/top-tracks-of-2017/downloads/featuresdf.csv/data

#
# Troque o atributo danceability para 1 se danceability>=0.x e 0 se danceability<0.x
#
spotify$danceability = ifelse(...)

#
# Verifique a quantidade de danceability (=1)
#
print(...)

#
# Elimine de spotify os atributos n?o num?ricos e que n?o fazem parte do treinamento
#
spotify = spotify[...]

#
# Crie os conjuntos de Treinamento e Teste classifica??o de danceability
# (no formato do knn que inclui o conjunto de classes cl) 
#
L <- sample(...)
train <- spotify[...]
test <- spotify[...]
cl <- spotify[...]

#
# knn, com o comando knn gere a predi??o do conjunto de teste
#
pred = knn(...)

#
# Gere a matriz de confus?o
#
c_matrix = table(...)
print(c_matrix)

#
# Exiba seus resultados
#
cat('Accuracy knn: ', sum(diag(c_matrix))/sum(c_matrix)*100, ' %', "\n")

cat('Accuracy danceability knn: ', c_matrix[2,2]/sum(c_matrix[,2])*100, ' %', "\n")



