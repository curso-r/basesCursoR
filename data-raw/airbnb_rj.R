library(tidyverse)
# http://insideairbnb.com/get-the-data.html

airbnb_rj_listings <- read_csv("http://data.insideairbnb.com/brazil/rj/rio-de-janeiro/2020-05-24/data/listings.csv.gz", )
airbnb_rj_reviews <- read_csv("http://data.insideairbnb.com/brazil/rj/rio-de-janeiro/2020-05-24/data/reviews.csv.gz")
# airbnb_rj_calendar <- read_csv("http://data.insideairbnb.com/brazil/rj/rio-de-janeiro/2020-05-24/data/calendar.csv.gz")

airbnb_rj_listings <- airbnb_rj_listings %>%
  rename(listing_id = id)

airbnb_rj_reviews <-
  airbnb_rj_reviews %>%
  select(-reviewer_name) %>%
  nest(reviews = c(-listing_id))

set.seed(1)
airbnb_rj <- airbnb_rj_listings %>%
  sample_n(25000) %>%
  left_join(airbnb_rj_reviews) %>%
  select(
    -scrape_id, -scrape_id, -last_scraped, -contains("url"),
    -host_name, -host_neighbourhood, -country,
    -calendar_last_scraped, -calendar_updated
  ) %>%
  mutate(
    across(contains("price"), parse_number),
    across(contains("deposit"), parse_number),
    across(contains("fee"), ~parse_number(as.character(.))),
    extra_people2 = parse_number(extra_people)
  )

usethis::use_data(airbnb_rj, overwrite = TRUE)
