# # A scratch script that stores a few things that I have been working on
#
# library(tidyverse)
# library(tm)
# library(tidytext)
#
# constituents <- read.csv("sp500const.csv")
# tickers <- constituents$Symbol
#
# # Read in Test Data Set
# news_data <- readRDS("200513_200314_tiingo.RDS")
#
# # Function takes in a data frame when searched was omitting the source argument
# # Can be applied at a dataframe level or applied to list of dataframes
# # Determine which news sources appear the most often when data provider doesn't tell you
# # A list of sources
#
# # Map the above function to news_data
# # Determine which source appears the most
# # Can be used part of your vendor analysis later
# # When comparing data sources
# src_frqcy_df <- map(news_data, summarise_src_frqcy) %>%
#   # Collapse into a data frame
#   bind_rows(.id  = "ticker") %>%
#   # Filter only those sources that appear more than 100
#   count(source) %>%
#   filter(n > 100)
#
# # Clean Data for preparation to get into corpus
# clean_data <- function(news_data_df, news_outlets){
#   news_data_df %>%
#   # Get rid of duplicate articles
#   distinct_at(vars(title), .keep_all = TRUE) %>%
#   select(id, description, tickers) %>%
#   rename(text = description,
#          doc_id = id)
# }
#
# mmm <- clean_data(news_data$MMM)
#
# cleaned <- map(news_data, clean_data) %>% bind_rows(.id  = "ticker")
#
# corpus <- DataframeSource(cleaned)
# df_corpus <- VCorpus(corpus)
# df_corpus_stemmed <- tolower(df_corpus)
#
