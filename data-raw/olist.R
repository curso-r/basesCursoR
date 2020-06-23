library(dplyr)
library(RSQLite)
library(DBI)
library(purrr)
library(stringr)
library(readr)
library(glue)
library(httr)

tmp <- tempfile(fileext = ".zip")
dir <- tempdir()
GET("https://storage.googleapis.com/kaggle-data-sets/55151%2F195341%2Fbundle%2Farchive.zip?GoogleAccessId=gcp-kaggle-com@kaggle-161607.iam.gserviceaccount.com&Expires=1593183708&Signature=PcRL%2Fm1tajdNBwoqLfLXJI8jKoNgJK8UOS2XYEyy2Jfsi2K2b7r%2BY9WWuCNmyDqwvuGwUtMYqoMLylwdfyCawqeiu8PvS5xGud%2Fbv%2F3bIk5S6c7cdvecQknnglkq0GufL0scCWG29vGEazLau0ElXcueC2qYiTga%2BpTHmzqyQyN9GMtePq%2Fc7b7LPxGBA%2FoTCtfXqkUTRaZFMqbiRQxZ1NejBxSVfcsZ5HYOaTUi8TukMXd6KuTG8vMukhbb%2BmHTsj0SZF6FBAQKn6gu%2FLB%2BB3XJ16MzBvcV3wNTyDn1CxE46kCx6I%2BIyZo1OqwqQWIR9eQgrASgTM1A7%2FYEZ84jkg%3D%3D", write_disk(tmp))
csvs <- unzip(tmp, exdir = dir)
nomes <- str_match(csvs, "/([^/]+)\\.csv")[,2]

engine = dbConnect(RSQLite::SQLite(), "inst/olist/olist.db")

walk2(csvs, nomes, ~{
  copy_to(engine, read_csv(.x), .y, overwrite = TRUE)
})

dbDisconnect(engine)
