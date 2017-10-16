library(xlsx)

data <- read.csv("MOVIE.csv")

#  Calculate population mean from all the movies up to 2015 on imdb_score
mean(data$imdb_score[which(data$title_year < 2015)])

# Collect a sample of all the movies in the year 2016
data2016 <- data[which(data$title_year == 2016),]
head(data2016)

# Test the hypothesis that "popularity of films (as imdb score) increases".
cor.test(data2016$num_voted_users, data2016$imdb_score, method = "pearson")
cor.test(data2016$movie_facebook_likes, data2016$imdb_score, method = "pearson")
