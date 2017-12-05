# Script for exploring data structures

# Load cat data as a data frame
cats <- read.csv("data/feline_data.csv")

# Data types in R

truth <- TRUE # Logical
lie <- FALSE
i <- 3L # integer (long)
d <- 3.0 # double
c <- 3.0 + 0i # complex
txt <- "TRUE" # character

answer <-FALSE
height <-3.5
dog <- "McScruffy"

# Vectors

# Note this is a vector of type double (must add "L" to make a number an integer)
x <- c(10,12,45,33)

# This vector is of type character (1,2 "implicitly co-erced" into character type)
xx <-c(1,2,'a')

# implicit coercion order: logical-->integer-->double-->complex-->character

# recast using manual coercion: as.<type name>(variable)

# Can label vector elements ----> named vector
names(x) <- c('a','b','c','d')

# Can reference a named vector by name: x["b"] (cf python dictionaries)

# Factors represent lists of categories as opposed to quantitative values

f <- factor(c("case","control","case","control","case"))

# f has 2 levels: case, control 
# Levels listed in alphabetical order, assigned 1,2

# Can reorder levels using relevel
f<-relevel(f,"control")

# Or define order at creation: 
ff <- factor(c("case","control","case","control","case"), levels=c("control","case"))

# Define a matrix (2D vectors)
m1 <- matrix(0,ncol=6,nrow=3)
m2 <- matrix(c(1,2), ncol=4,nrow=3)

# Automatically fills entries by column, set byrow=TRUE to fill by row

# Create a list

l <- list(1,"a",TRUE,matrix(0,nrow=2, ncol=2),f)

# create a named list

l_named <- list(a="SWC",b=1:4)

# Need to double [[]] to get to a given value



