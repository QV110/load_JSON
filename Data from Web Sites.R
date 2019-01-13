# Extract Data from Web Sites


library(jsonlite)
pizza <- fromJSON("https://www.jaredlander.com/data/PizzaFaves.json")
class pizza
class(pizza$Name) #dataframe
class(pizza$Details) # char
class(pizza$Details[[1]]) #list
pizza # run pizza


# Scraping Web Data

library(rvest)
ribalta <- read_html("https://www.jaredlander.com/data/ribalta.html")
class(ribalta)
ribalta %>% html_nodes("ul") %>% html_nodes("span")
ribalta %>% html_nodes(".street")
ribalta %>% html_nodes(".street") %>% html_text() #print out street address

#obtain data fram with generic names
ribalta %>%
  html_nodes("table.food-items") %>%
  magrittr::extract2(5) %>%
  html_table()
