library(twitteR)
library(ggplot2)
library(lubridate)
library(dplyr)
library(tidytext)
library(stringr)

api_key <- "..."
api_secret <- "..."
access_token <- "..."
access_token_secret <- "..."

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

search_word <- "water"
number_of_tweets <- 1000

#pass a pair of coordinates (longitude, latitude) to specify location for search
loc_of_tweets <- "34.052234,-118.243685"
#and also the search radius (as in how wider around the coordinates should we search)
search_radius <- "3000km"

twitter_result <- searchTwitter(search_word, n=number_of_tweets, geocode= paste(loc_of_tweets, search_radius, sep=","))

twitter_df <- twListToDF(twitter_result)
#remove retweets
twitter_df2 <- twitter_df[twitter_df$isRetweet==FALSE,]
#make date
twitter_df2$created = ydm_hms(twitter_df2$created)

#plot when the tweets are being made
ggplot(twitter_df2, aes(x = created)) +
  geom_histogram(position = "identity", bins = 20, show.legend = FALSE) +
  theme_bw()


replace_reg <- "https://t.co/[A-Za-z\\d]+|http://[A-Za-z\\d]+|&amp;|&lt;|&gt;|RT|https"
unnest_reg <- "([^A-Za-z_\\d#@']|'(?![A-Za-z_\\d#@]))"
tidy_tweets <- twitter_df2 %>% 
  filter(!str_detect(text, "^RT")) %>%
  mutate(text = str_replace_all(text, replace_reg, "")) %>%
  unnest_tokens(word, text, token = "regex", pattern = unnest_reg) %>%
  filter(!word %in% stop_words$word,
         str_detect(word, "[a-z]"))

frequency <- tidy_tweets %>% 
  count(word, sort = TRUE) 

#remove when the word is the keyword or contains the keyword
frequency <- frequency[grepl(search_word,frequency$word)==FALSE,]

