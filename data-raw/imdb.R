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
    id_filme = imdb_title_id,
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
    num_avaliacoes = votes,
    direcao = director,
    roteiro = writer,
    producao = production_company,
    elenco = actors,
    descricao = description,
    num_criticas_publico = reviews_from_users,
    num_criticas_critica = reviews_from_critics
  )

usethis::use_data(imdb_completa, overwrite = TRUE)

imdb <- imdb_completa |>
  filter(str_detect(orcamento, "\\$") | is.na(orcamento)) |>
  filter(str_detect(receita, "\\$") | is.na(receita)) |>
  filter(str_detect(receita_eua, "\\$") | is.na(receita_eua)) |>
  mutate(
    across(
      c(orcamento, receita, receita_eua),
      readr::parse_number
    )
  ) |>
  sample_n(n(), replace = FALSE)

usethis::use_data(imdb, overwrite = TRUE)

# title_principals --------------------------------------------------------

temp_file <- tempfile(fileext = ".csv")

googledrive::drive_download(
  file = "https://drive.google.com/file/d/135sFmJST9lrSjYDLehSvETJ-ynJ1EGWi/view?usp=sharing",
  path = temp_file
)

title_principals <- read_csv(temp_file)

imdb_top_cast <- title_principals |>
  select(
    id_filme = imdb_title_id,
    pessoa_id = imdb_name_id,
    ordem = ordering,
    categoria = category,
    atribuicao = job,
    personagem = characters
  )

usethis::use_data(imdb_top_cast, overwrite = TRUE)

# names -------------------------------------------------------------------

temp_file <- tempfile(fileext = ".csv")

googledrive::drive_download(
  file = "https://drive.google.com/file/d/132dhN7cBLijtKTBDIOQgE6IJeGxNKVly/view?usp=sharing",
  path = temp_file
)

names <- read_csv(temp_file)

imdb_pessoas <- names |>
  select(
    pessoa_id = imdb_name_id,
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

usethis::use_data(imdb_pessoas, overwrite = TRUE)


# ratings -----------------------------------------------------------------

temp_file <- tempfile(fileext = ".csv")

googledrive::drive_download(
  file = "https://drive.google.com/file/d/135MDZPGTFN9Ouob40dQCxuGr-HkURZ09/view?usp=sharing",
  path = temp_file
)

ratings <- read_csv(temp_file)

imdb_avaliacoes <- ratings |>
  select(
    id_filme = imdb_title_id,
    num_avaliacoes = total_votes,
    nota_media = mean_vote,
    nota_mediana = median_vote,
    nota_media_ponderada = weighted_average_vote,
    starts_with("allgenders"),
    nota_media_top_1000_avaliadores = top1000_voters_rating,
    num_votos_top_1000_avaliadores = top1000_voters_votes,
    nota_media_eua = us_voters_rating,
    num_votos_eua = us_voters_votes,
    nota_media_fora_eua = non_us_voters_rating,
    num_votos_fora_eua = non_us_voters_votes,
  ) |>
  rename_with(
    .fn = ~ str_replace(.x, "votes_", "num_notas_"),
    .cols = starts_with("votes_")
  ) |>
  rename_with(
    .fn = ~ str_replace(.x, "allgenders|", "nota_media_") |>
      str_replace("_0age", "idade_0_18") |>
      str_replace("_18age", "idade_18_30") |>
      str_replace("_30age", "idade_30_45") |>
      str_replace("_45age", "idade_45_mais") |>
      str_remove("_avg_vote"),
    .cols = ends_with("_avg_vote")
  ) |>
  rename_with(
    .fn = ~ str_replace(.x, "allgenders|", "num_votos_") |>
      str_replace("_0age", "idade_0_18") |>
      str_replace("_18age", "idade_18_30") |>
      str_replace("_30age", "idade_30_45") |>
      str_replace("_45age", "idade_45_mais") |>
      str_remove("_votes"),
    .cols = ends_with("_votes")
  )

usethis::use_data(imdb_avaliacoes, overwrite = TRUE)












