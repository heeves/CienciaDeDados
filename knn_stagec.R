require(survival)
library(e1071)
library(rpart)
library(class)

# Clear workspace
rm(list = ls())

set.seed(1984)

if (any(is.na(stagec))) {
  cat("\n with NA ",nrow(stagec), " rows \n")
  stagec = na.omit(stagec)
  cat("\n without NA ",nrow(stagec), " rows \n")
} else cat("\n No NA values \n")
  

L <- sample(1:nrow(stagec),round(nrow(stagec)/3))
train <- stagec[-L,-ncol(stagec)]
test <- stagec[L,-ncol(stagec)]
cl <- stagec[-L,ncol(stagec)]

pred = knn(train, test, cl, k=3)

c_matrix = table(pred,stagec[L,]$ploidy)
print(c_matrix)

cat('Accuracy: ', sum(diag(c_matrix))/sum(c_matrix)*100, ' %', "\n")

