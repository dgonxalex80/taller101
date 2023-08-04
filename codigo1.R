
# importar datos
library(readr)
titanic <- read_delim("data/titanic3.csv", delim = ";", escape_double = FALSE, col_types = cols(age = col_number(), fare = col_number()), trim_ws = TRUE)

# indicadores de variables cualitativas
# visualizar la tada
str(titanic)

# indicadores de las variables cualitativas
t= table(titanic$survived)
prop.table(t)

summarytools::freq(titanic$sex, )

# indicadores de variables cuantitativas

summary(titanic$age)


# install.packages("summarytools")
library(summarytools)
summarytools::descr(titanic$age)


install.packages("psych")
library(psych)
psych::describe(titanic$age)

psych::describeBy(titanic$age, titanic$survived)
psych::describeBy(titanic$age, titanic$sex)
