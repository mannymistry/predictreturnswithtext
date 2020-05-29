# Filter, Convert to Sentocorpus Clean and Create Document Term Matrix
# Note that this function relies on usnews data set from the sento metrics package


filter_tosento_clean_dtm <- function(news_data){
us_economy_only_df <- usnews %>%
  filter(economy == 1)

us_economy_only <- sento_corpus(us_economy_only_df)

stem_cleaned_us_economy <- dfm(us_economy_only,
                               tolower = TRUE,
                               remove_numbers = TRUE,
                               remove = stopwords("english"),
                               stem = TRUE,
                               remove_punct = TRUE)

}
