library(dplyr)
library(RSQLite)
library(DBI)
library(purrr)
library(stringr)
library(readr)
library(glue)
library(httr)
library(rvest)

csvs <- c(
  "olist_customers_dataset.csv",
  "olist_geolocation_dataset.csv",
  "olist_order_items_dataset.csv",
  "olist_order_payments_dataset.csv",
  "olist_order_reviews_dataset.csv",
  "olist_orders_dataset.csv",
  "olist_products_dataset.csv",
  "olist_sellers_dataset.csv",
  "product_category_name_translation.csv"
)
nomes <- str_remove(csvs, "\\.csv")

engine = dbConnect(RSQLite::SQLite(), "inst/olist/olist.db")

url <- "https://raw.githubusercontent.com/Athospd/work-at-olist-data/master/datasets/{.x}"
walk2(csvs, nomes, ~{
  copy_to(engine, read_csv(glue(url)), .y, overwrite = TRUE, temporary = FALSE)
})

db_list_tables(engine)

tbl(engine, "olist_sellers_dataset")
dbDisconnect(engine)

#
# dbConnect(RSQLite::SQLite(), system.file("olist/olist.db", package = "basesCursoR"))
