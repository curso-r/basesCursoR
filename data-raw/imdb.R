## code to prepare `imdb` dataset goes here

library(readr)
library(dplyr)
library(tidyr)
library(stringr)


# movies ------------------------------------------------------------------

temp_file <- tempfile(fileext = ".csv")

googledrive::drive_download(
  file = "https://drive.google.com/file/d/1348FkxmtMSuRo02z_W6XFApGVXCUgIfV/view?usp=sharing",
  path = temp_file
)

movies <- read_csv(temp_file)

imdb_completa <- movies |>
  select(
    titulo = title,
    titulo_original = original_title,
    ano = year,
    data_lancamento = date_published,
    genero = genre,
    duracao = duration,
    pais = country,
    idioma = language,
    orcamento = budget,
    receita = worlwide_gross_income,
    receita_eua = usa_gross_income,
    nota_imdb = avg_vote,
    direcao = director,
    roteiro = writer,
    producao = production_company,
    elenco = actors,
    descricao = description,
    num_criticas_publico = reviews_from_users,
    num_criticas_critica = reviews_from_critics
  )

imdb_completa |>
  drop_na(receita) |>
  filter(!str_detect(receita, "\\$")) |> View()

usethis::use_data(imdb, overwrite = TRUE)

# names -------------------------------------------------------------------

temp_file <- tempfile(fileext = ".csv")

googledrive::drive_download(
  file = "https://drive.google.com/file/d/132dhN7cBLijtKTBDIOQgE6IJeGxNKVly/view?usp=sharing",
  path = temp_file
)

names <- read_csv(temp_file)

imdb_nomes <- names |>
  select(
    nome = name,
    nome_nascimento = birth_name,
    altura = height,
    bio,
    data_nascimento = date_of_birth,
    local_nascimento = place_of_birth,
    data_falecimento = date_of_death,
    local_falecimento = place_of_death,
    razao_falecimento = reason_of_death,
    nome_conjuges = spouses_string,
    num_conjuges = spouses,
    num_divorcios = divorces,
    num_filhos = children,
    num_conjuges_com_filhos = spouses_with_children
  )

usethis::use_data(imdb_nomes, overwrite = TRUE)


# ratings -----------------------------------------------------------------

temp_file <- tempfile(fileext = ".csv")

googledrive::drive_download(
  file = "https://drive.google.com/file/d/135MDZPGTFN9Ouob40dQCxuGr-HkURZ09/view?usp=sharing",
  path = temp_file
)

ratings <- read_csv(temp_file)


# title_principals --------------------------------------------------------


temp_file <- tempfile(fileext = ".csv")

googledrive::drive_download(
  file = "https://drive.google.com/file/d/135sFmJST9lrSjYDLehSvETJ-ynJ1EGWi/view?usp=sharing",
  path = temp_file
)

title_principals <- read_csv(temp_file)











