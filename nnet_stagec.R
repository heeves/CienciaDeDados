require(survival)
library(e1071)
library(rpart)
library(class)
library(nnet)

# Clear workspace
rm(list = ls())

set.seed(1984)

if (any(is.na(stagec))) {
  cat("\n with NA ",nrow(stagec), " rows \n")
  stagec = na.omit(stagec)
  cat("\n without NA ",nrow(stagec), " rows \n")
} else cat("\n No NA values \n")

L <- sample(1:nrow(stagec),round(nrow(stagec)/3))
train <- stagec[-L,]
test <- stagec[L,]

fit = nnet(ploidy ~.,size=2,data=train)
print(fit)

pred = max.col(predict(fit,test))

c_matrix = table(pred,test$ploidy)
print(c_matrix)

cat('Accuracy: ', sum(diag(c_matrix))/sum(c_matrix)*100, ' %', "\n")


