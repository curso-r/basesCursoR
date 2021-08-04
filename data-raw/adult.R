# pacotes
library(tidymodels)
library(tidyverse)
library(DataExplorer)
library(skimr)
library(pROC)

#####################################################################################################
# PASSO 0) CARREGAR AS BASES

# Download dos dados -----------------------------------------------------------------------------

# baixa adult.data se nao existe ainda
tmp_data <- tempfile("adult.data")
httr::GET("http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data", httr::write_disk(tmp_data))

# baixa adult.test se nao existe ainda
tmp_test <- tempfile("adult.test")
httr::GET("http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.test", httr::write_disk(tmp_test))

# baixa adult.names se nao existe ainda
tmp_names <- tempfile("adult.names")
httr::GET("http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.names", httr::write_disk(tmp_names))

# Carrega dados ---------------------------------------------------------------------------------------

# prepara os nomes das colunas para colocar no cabecalho
adult_names <- tibble(name = read_lines(tmp_names)) %>%
  filter(
    str_detect(name, "^[^\\|].*:")
  ) %>%
  separate(name, c("name", "description"), sep = ":") %>%
  mutate(
    name = snakecase::to_snake_case(name)
  ) %>%
  add_row(name = "more_than_50k", description = "person earn more than USD 50K per year.")

# treino/teste -------------------------------------------
adult_train <- read_csv(file = tmp_data, na = c("?", "", "NA"), col_names = adult_names$name) %>%
  mutate(
    more_than_50k = if_else(more_than_50k == "<=50K", "no", "yes")
  )
adult_test  <- read_csv(file = tmp_test, na = c("?", "", "NA"), col_names = adult_names$name, skip = 1) %>%
  mutate(
    more_than_50k = if_else(more_than_50k == "<=50K.", "no", "yes")
  )

adult <- list(
  treino = adult_train,
  teste = adult_test
)

readr::write_rds(adult, "inst/extdata/adult.rds", compress = "xz")
