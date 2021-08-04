library(tidyverse)
library(httr)
library(readxl)
library(geobr)

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

# lat long
arruma_texto <- function(strs) {
  strs %>%
    str_to_lower() %>%
    str_replace_all("'", "") %>%
    str_replace_all("-", " ") %>%
    str_replace_all("doo", "do") %>%
    abjutils::rm_accent() %>%
    str_replace_all("eldorado do carajas", "eldorado dos carajas") %>%
    str_replace_all("santa izabel do para", "santa isabel do para") %>%
    str_replace_all("fortaleza do tabocao", "tabocao") %>%
    str_replace_all("itapage", "itapaje") %>%
    str_replace_all("olho-dagua do borges", "olho dagua do borges") %>%
    str_replace_all("sao vicente do serido", "serido") %>%
    str_replace_all("iguaracy", "iguaraci") %>%
    str_replace_all("muquem de sao francisco", "muquem do sao francisco") %>%
    str_replace_all("brazopolis", "brasopolis") %>%
    str_replace_all("embu das artes", "embu") %>%
    str_replace_all("moji mirim", "mogi mirim") %>%
    str_replace_all("sao luis do paraitinga", "sao luiz do paraitinga") %>%
    str_replace_all("balneario rincao", "rincao") %>%
    str_replace_all("poxoreu", "poxoreo")
}
municipios <- geobr::read_municipality()

# covid_mun <- covid %>% distinct(mun = municipio) %>% mutate(mun = arruma_texto(mun))
# municipios_mun <- municipios %>% distinct(mun = name_muni) %>% mutate(mun = arruma_texto(mun))
#
# anti_join(municipios_mun, covid_mun)
# anti_join(covid_mun, municipios_mun)

covid <- left_join(
  covid %>% mutate(mun = arruma_texto(municipio)),
  municipios %>%
    dplyr::mutate(centroid = sf::st_centroid(geom)) %>%
    tibble::as_tibble() %>%
    dplyr::select(-geom) %>%
    dplyr::mutate(
      lon = purrr::map_dbl(centroid, 1),
      lat = purrr::map_dbl(centroid, 2)
    ) %>%
    dplyr::select(name_muni, lat, lon) %>%
    mutate(mun = arruma_texto(name_muni)) %>%
    select(-name_muni),
  by = "mun"
) %>%
  select(-mun)

readr::write_rds(covid, "inst/extdata/covid.rds", compress = "xz")
