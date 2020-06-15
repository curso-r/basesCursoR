## code to prepare `cetesb` dataset goes here

estacoes <- c(73, 65, 92, 95, 96, 120, 83, 85, 99, 72, 86, 64, 98, 63)

tab_estacoes <- Rpollution::cetesb_station_ids %>%
  dplyr::filter(id %in% estacoes)

base_CO <- purrr::map_dfr(
  na.omit(tab_estacoes$id[tab_estacoes$CO == "yes"]),
  Rpollution::scraper_cetesb,
  parameter = 16,
  start = "01/01/2017",
  end = "31/05/2020",
  login = "user",
  password = "senha",
  safe = TRUE
)

base_NO <- purrr::map_dfr(
  na.omit(tab_estacoes$id[tab_estacoes$NO == "yes"]),
  Rpollution::scraper_cetesb,
  parameter = 17,
  start = "01/01/2017",
  end = "31/05/2020",
  login = "user",
  password = "senha",
  safe = TRUE
)

base_NO2 <- purrr::map_dfr(
  na.omit(tab_estacoes$id[tab_estacoes$NO2 == "yes"]),
  Rpollution::scraper_cetesb,
  parameter = 15,
  start = "01/01/2017",
  end = "31/05/2020",
  login = "user",
  password = "senha",
  safe = TRUE
)

base_MP10 <- purrr::map_dfr(
  na.omit(tab_estacoes$id[tab_estacoes$MP10 == "yes"]),
  Rpollution::scraper_cetesb,
  parameter = 12,
  start = "01/01/2017",
  end = "31/05/2020",
  login = "user",
  password = "senha",
  safe = TRUE
)

base_o3 <- purrr::map_dfr(
  na.omit(tab_estacoes$id[tab_estacoes$O3 == "yes"]),
  Rpollution::scraper_cetesb,
  parameter = 63,
  start = "01/01/2017",
  end = "31/05/2020",
  login = "user",
  password = "senha",
  safe = TRUE
)

cetesb <- dplyr::bind_rows(
  base_CO,
  base_NO,
  base_NO2,
  base_MP10,
  base_o3
) %>%
  dplyr::rename(
    estacao_cetesb = stationname,
    poluente = parameter,
    data = date,
    hora = hour,
    concentracao = conc
  )

usethis::use_data(cetesb, overwrite = TRUE)
