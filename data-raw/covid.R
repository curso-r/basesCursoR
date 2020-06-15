library(tidyverse)
library(httr)
library(readxl)

link_fixo <- "https://xx9p7hp1p7.execute-api.us-east-1.amazonaws.com/prod/PortalGeral"
infos_do_link_fixo <- GET(
  link_fixo,
  add_headers("x-parse-application-id" = "unAFkcaNDeXajurGB7LChj8SgQYS2ptm")
) %>% content()

temp_file <- tempfile(fileext = ".xlsx")
url_xlsx <- infos_do_link_fixo$results[[1]]$arquivo$url
xlsx <- GET(url_xlsx, write_disk(temp_file, overwrite = TRUE))


capitais_do_brasil <- GET("https://www.todamateria.com.br/capitais-do-brasil/") %>%
  content() %>%
  rvest::html_table() %>%
  `[[`(1)

covid <- read_excel(temp_file, guess_max = 100000) %>%
  left_join(
    capitais_do_brasil %>% select(Capitais) %>% mutate(eh_capital = TRUE), by = c("municipio" = "Capitais")
  ) %>%
  mutate(
    data = as.Date(data),
    populacaoTCU2019 = str_remove_all(populacaoTCU2019, "\\([0-9]+\\)"),
    across(populacaoTCU2019:emAcompanhamentoNovos, as.numeric),
    eh_capital = coalesce(eh_capital, FALSE),
    obitosAcumulado_log2 = log2(ifelse(obitosAcumulado <= 0, 0.5, obitosAcumulado)),
    obitosNovos_log2 = log2(ifelse(obitosNovos <= 0, 0.5, obitosNovos))
  )

usethis::use_data(covid, overwrite = TRUE)
