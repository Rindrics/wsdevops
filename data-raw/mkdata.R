## code to prepare `DATASET` dataset goes here
data(iris)
my_iris <- iris
my_iris$foo <- 1 #なんでもいいです
my_iris$bar <- 2
head(my_iris)
usethis::use_data(my_iris, overwrite = TRUE)
