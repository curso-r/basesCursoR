arrumar_qualidade <- function(x) {
  if (is.numeric(x)) {
    return(x)
  }
  case_when(
    is.na(x) ~ x,
    x == "Po" ~ "Baixa",
    x == "Fa" ~ "Regular",
    x == "TA" ~ "Média",
    x == "Gd" ~ "Boa",
    x == "Ex" ~ "Excelente",
    TRUE ~ x
  )
}


arrumar_tipo_rua <- function(x) {
  case_when(
    is.na(x) ~ x,
    x == "Grvl" ~ "cascalho",
    x == "Pave" ~ "pavimentada",
    TRUE ~ x
  )
}
