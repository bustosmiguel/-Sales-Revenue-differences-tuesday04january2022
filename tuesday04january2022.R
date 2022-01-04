# Sales and Revenue Differences

# What´s the difference, between Sales and Revenue? This is an ExxonMovil example, ExxonMovil it´s an American multinational oil and gas corporation, headquartered in Irving, Texas. And this is the "ExxonMovil Condensed Consolidated Statement of Income" in 2019, that can show the differences between Sales and Revenue:
  
library(ggplot2)
library(tidyverse)

# Concepts: 
  
# Sales = Money paid by customers
# Revenue = Sales, income form equity affiliates and other incomes.


Condensed_Consolidated_Statement_of_Income <- data.frame(Revenues_and_other_Income = c("1.- Sales_and_operating_revenue", 
                                                                                       "2.- Income_form_Equity_Affiliaties", 
                                                                                       "3.- Other_Income"),
                                                         Thirteenth_June_2019 = c(67491, 1359, 241),
                                                         Thirteenth_June_2018 = c(71456, 1729, 316))


revenue <- ggplot(data = Condensed_Consolidated_Statement_of_Income, aes(x = Thirteenth_June_2019, y = Thirteenth_June_2018, fill = Thirteenth_June_2019))
revenue + geom_bar(stat = "identity")

r <- ggplot(data = Condensed_Consolidated_Statement_of_Income, aes(x = Revenues_and_other_Income, y = Thirteenth_June_2019, fill = Thirteenth_June_2018))
r+ geom_bar(stat = "identity") +
  theme_classic()

# Conclusion: Revenue is majority sales as this geom_bar, but consider to revenue, the incomes from equities and other incomes.


https://www.investopedia.com/ask/answers/122214/what-difference-between-revenue-and-sales.asp
