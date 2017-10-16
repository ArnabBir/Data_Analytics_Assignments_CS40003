dataNUTRITION <- read.csv("NUTRITION.csv")
head(dataNUTRITION)

# Decide whether rating is correlated with sugar content in the product
cor.test(dataNUTRITION$rating, dataNUTRITION$sugars, method = "pearson")

# If correlation exists then what type of correlation (i.e. positive, negative, linear, non-linear).
# Calculate r2  to support your answer. For non-linearity test you should try with up to 3 degree models.
cor(dataNUTRITION$rating, dataNUTRITION$sugars, method = "pearson")
r2 <- sapply(cor(dataNUTRITION$rating, dataNUTRITION$sugars, method = "pearson"), function(x) x^2)
print(r2)
df <- nrow(dataNUTRITION) - 2