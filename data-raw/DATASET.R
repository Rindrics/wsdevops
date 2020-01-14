## code to prepare `DATASET` dataset goes here
data(iris)
iris$foo <- 1 #なんでもいいです
ires$bar <- 2 
head(iris)
usethis::use_data(iris, overwrite = TRUE)
