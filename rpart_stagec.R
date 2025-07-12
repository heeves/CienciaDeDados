require(survival)
library(e1071)
library(rpart)
library(class)

# Clear workspace
rm(list = ls())

set.seed(1984)

L <- sample(1:nrow(stagec),round(nrow(stagec)/3))
train <- stagec[-L,]
test <- stagec[L,]

fit = rpart(ploidy ~ ., stagec)
par(mfrow = c(1,2), xpd = NA) # otherwise on some devices the text is clipped
plot(fit)
text(fit, use.n = TRUE)

pred = predict(fit,test,type="class")

c_matrix = table(pred,test$ploidy)
print(c_matrix)

cat('Accuracy: ', sum(diag(c_matrix))/sum(c_matrix)*100, ' %', "\n")


