library(class)
library(rpart)
set.seed(1984)

#
# Leia o arquivo spotify
#
spotify = read.csv(...) 
# from https://www.kaggle.com/nadintamer/top-tracks-of-2017/downloads/featuresdf.csv/data

#
# Kmeans
#
spotify1 = spotify[...] # Seleciona os campos

kmeans1 = kmeans(...)

EdSheeran = ...  # vetor com as linhas com EdSheeran ou crie o vetor manualmente c(..., ..., ..., ...)
EdSheeran

cat("kmeans 3")
print(kmeans1$size)
print(kmeans1$cluster[EdSheeran])


