## code to prepare `ssp` dataset goes here

# fonte orignial indisponível por enquanto
con <- RSQLite::dbConnect(RSQLite::SQLite(), "")

tab_delegacias <- dplyr::tbl(con, "base_delegacias") %>%
  dplyr::select(delegacia_id, delegacia_nome, municipio_nome, regiao_nome)

tab_ocor <- dplyr::tbl(con, "base_ocorrencias_mensais")

ssp <- tab_ocor %>%
  dplyr::left_join(tab_delegacias, by = "delegacia_id") %>%
  dplyr::select(-data, -delegacia_id) %>%
  dplyr::select(
    mes, ano,
    dplyr::starts_with("delegacia"),
    dplyr::starts_with("municipio"),
    dplyr::starts_with("regiao"),
    dplyr::everything()
  ) %>%
  dplyr::collect()

readr::write_rds(ssp, "inst/extdata/ssp.rds", compress = "xz")
