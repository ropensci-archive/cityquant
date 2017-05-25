library(twitteR)

api_key <- "..."
api_secret <- "..."
access_token <- "..."
access_token_secret <- "..."

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

search_word <- "water"
number_of_tweets <- 10000

#pass a pair of coordinates (longitude, latitude) to specify location for search
loc_of_tweets <- "34.052234, -118.243685"
#and also the search radius (as in how wider around the coordinates should we search)
search_radius <- "300km"

twitter_result <- searchTwitter(search_word, n=number_of_tweets, geocode= paste(loc_of_tweets, search_radius, sep=","))



