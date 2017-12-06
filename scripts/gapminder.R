# Script for analysing gapminder data directly from online source

# Load gapminder data directly from URL
url <-paste("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv",
            sep = '')

gapminder <- read.table(url,sep=",", header=TRUE)

