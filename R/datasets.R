#' Painel Coronavírus no Brasil
#'
#' Contagem de casos confirmados e óbitos confirmados por dia no Brasil divulgado pelo portal [https://covid.saude.gov.br/]().
#'
#' @format Um data frame com 383908 linhas e 19 variáveis:
#' \describe{
#' \item{regiao}{}
#' \item{estado}{}
#' \item{municipio}{}
#' \item{coduf}{}
#' \item{codmun}{}
#' \item{codRegiaoSaude}{}
#' \item{nomeRegiaoSaude}{}
#' \item{data}{}
#' \item{semanaEpi}{}
#' \item{populacaoTCU2019}{}
#' \item{casosAcumulado}{}
#' \item{casosNovos}{}
#' \item{obitosAcumulado}{}
#' \item{obitosNovos}{}
#' \item{Recuperadosnovos}{}
#' \item{emAcompanhamentoNovos}{}
#' \item{eh_capital}{}
#' \item{obitosAcumulado_log2}{}
#' \item{obitosNovos_log2}{}
#' \item{lat}{}
#' \item{lon}{}
#' }
#' @source \url{https://covid.saude.gov.br/}
"covid"



#' Adult Dataset
#'
#' Extração feita por Barry Becker do Censo de 1994 dos Estados Unidos.
#'
#' Objetivo de predição é determinar se a pessoa ganha acima de 50 mil dólares por ano.
#'
#' @format Um data frame com 48842 linhas e 15 variáveis:
#' \describe{
#'   \item{age}{}
#'   \item{workclass}{}
#'   \item{fnlwgt}{}
#'   \item{education}{}
#'   \item{education_num}{}
#'   \item{marital_status}{}
#'   \item{occupation}{}
#'   \item{relationship}{}
#'   \item{race}{}
#'   \item{sex}{}
#'   \item{capital_gain}{}
#'   \item{capital_loss}{}
#'   \item{hours_per_week}{}
#'   \item{native_country}{}
#'   \item{more_than_50k}{variável resposta com duas categorias: "yes" e "no"}
#' }
#' @source \url{http://archive.ics.uci.edu/ml/datasets/Adult}
"adult"
