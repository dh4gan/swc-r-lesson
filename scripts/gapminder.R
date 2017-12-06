# Script for analysing gapminder data directly from online source
# Plotting with ggplot2 (part of the Tidyverse, a collection of packages for data science)

# Load gapminder data directly from URL
url <-paste("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv",
            sep = '')

gapminder <- read.table(url,sep=",", header=TRUE)

library(ggplot2)

# ggplot2 works from the following elements:
# data
# aesthetics - how is a data point rendered?
# geoms - what kind of plot is it? Scatter, line, bar ...
# layers - How many different data elements are overplotted?

# Compare: basic plot using standard library

# plot life expectancy vs GDP per capita, colour coded by continent
#plot(gapminder$lifeExp, gapminder$gdpPercap, col = gapminder$continent)

# ggplot2: qplot
#qplot(lifeExp, gdpPercap, data=gapminder, colour=continent)

# More flexible plotting commands

# GDP vs life expectancy
p <-ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap, colour=continent))

# Add various layers to plot to modify it
p + geom_line(aes(group=country)) # line data grouped by country
p + geom_point(alpha=0.4) # transparent scatter plot on top
p + scale_y_log10() # y log scale

# Life expectancy vs year
p <-ggplot(data=gapminder, aes(x=year, y=lifeExp, colour=continent))
#p + geom_point() # make this a scatter plot
p + geom_line(aes(group=country)) + geom_point(alpha=0.35) # make this a line plot, with data grouped by country


# statistics layers - overplot contours
p <- ggplot(data=gapminder,aes(x=lifeExp, y=gdpPercap))
p <- p + geom_point(alpha=0.4, aes(colour=continent)) + scale_y_log10()
p + geom_density2d()

# Multiple plots
# Compare life expectancy over time by country, split by continent (using facet_wrap)
# All x and y axes are consistent according to global extrema
p <-ggplot(data=gapminder, aes(x=year,y=lifeExp, 
                               colour=continent, 
                               group=country))
p + geom_line() + scale_y_log10() + facet_wrap(~continent)


p <- ggplot(data=gapminder, aes(x=pop, y=gdpPercap, colour=continent))
p <- p + geom_point(alpha=0.2) + scale_x_log10() + scale_y_log10()
p + geom_density_2d() + facet_wrap(~continent)


