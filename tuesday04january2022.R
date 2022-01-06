library(tidyverse)
library(ggplot2)
library(ggthemes)

# Sales and Revenue Differences

# What´s the difference, between Sales and Revenue? This is an ExxonMovil example, ExxonMovil it´s an American multinational oil and gas corporation, headquartered in Irving, Texas. And this is the "ExxonMovil Condensed Consolidated Statement of Income" in 2019, that can show the differences between Sales and Revenue:
  
library(ggplot2)
library(tidyverse)

# Concepts: 
  
# Sales = Money paid by customers
# Revenue = Sales, income form equity affiliates and other incomes.


CCSOI <- data.frame(Revenues_and_other_Income = c("Sales and operating revenue",
                                                  "Income form Equity Affiliaties",
                                                  "Other Income"),
                    Thirteenth_June_2019 = c(67491, 1359, 241),
                    Thirteenth_June_2018 = c(71456, 1729, 316))


revenue <- ggplot(data = CCSOI, aes(x = Thirteenth_June_2019, y = Thirteenth_June_2018, fill = Thirteenth_June_2019))

r <- ggplot(data = CCSOI, aes(x = "", y = Thirteenth_June_2019, fill = Revenues_and_other_Income))
r+ geom_bar(stat = "identity") +
  ylab("2019 incomes")+
  xlab("Revenue") +
  ggtitle("Revenue composition", subtitle = "The revenue concept")


# Conclusion: Revenue is "Sales" and "incomes from equity affiliaties" and "Other incomes".


https://www.investopedia.com/ask/answers/122214/what-difference-between-revenue-and-sales.asp

