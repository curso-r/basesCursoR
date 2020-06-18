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

#' Airbnb Dataset do Rio De Janeiro
#'
#' Extração feita pelo site [insideairbnb.com](http://insideairbnb.com/get-the-data.html) da listagem de
#' locações disponíveis no site [Airbnb](https://www.airbnb.com.br/)
#'
#' Possíveis análises:
#'
#' - Prever preço diário de uma locação (`price`)
#' - Análise geoespacial (`latitude` e `longitude`)
#' - Análise de textos (`reviews` e `description`)
#'
#' @format Um data frame com 25000 linhas e 93 variáveis:
#' \describe{
#' \item{listing_id}{}
#' \item{name}{}
#' \item{summary}{}
#' \item{space}{}
#' \item{description}{}
#' \item{experiences_offered}{}
#' \item{neighborhood_overview}{}
#' \item{notes}{}
#' \item{transit}{}
#' \item{access}{}
#' \item{interaction}{}
#' \item{house_rules}{}
#' \item{host_id}{}
#' \item{host_since}{}
#' \item{host_location}{}
#' \item{host_about}{}
#' \item{host_response_time}{}
#' \item{host_response_rate}{}
#' \item{host_acceptance_rate}{}
#' \item{host_is_superhost}{}
#' \item{host_listings_count}{}
#' \item{host_total_listings_count}{}
#' \item{host_verifications}{}
#' \item{host_has_profile_pic}{}
#' \item{host_identity_verified}{}
#' \item{street}{}
#' \item{neighbourhood}{}
#' \item{neighbourhood_cleansed}{}
#' \item{neighbourhood_group_cleansed}{}
#' \item{city}{}
#' \item{state}{}
#' \item{zipcode}{}
#' \item{market}{}
#' \item{smart_location}{}
#' \item{country_code}{}
#' \item{latitude}{}
#' \item{longitude}{}
#' \item{is_location_exact}{}
#' \item{property_type}{}
#' \item{room_type}{}
#' \item{accommodates}{}
#' \item{bathrooms}{}
#' \item{bedrooms}{}
#' \item{beds}{}
#' \item{bed_type}{}
#' \item{amenities}{}
#' \item{square_feet}{}
#' \item{price}{}
#' \item{weekly_price}{}
#' \item{monthly_price}{}
#' \item{security_deposit}{}
#' \item{cleaning_fee}{}
#' \item{guests_included}{}
#' \item{extra_people}{}
#' \item{minimum_nights}{}
#' \item{maximum_nights}{}
#' \item{minimum_minimum_nights}{}
#' \item{maximum_minimum_nights}{}
#' \item{minimum_maximum_nights}{}
#' \item{maximum_maximum_nights}{}
#' \item{minimum_nights_avg_ntm}{}
#' \item{maximum_nights_avg_ntm}{}
#' \item{has_availability}{}
#' \item{availability_30}{}
#' \item{availability_60}{}
#' \item{availability_90}{}
#' \item{availability_365}{}
#' \item{number_of_reviews}{}
#' \item{number_of_reviews_ltm}{}
#' \item{first_review}{}
#' \item{last_review}{}
#' \item{review_scores_rating}{}
#' \item{review_scores_accuracy}{}
#' \item{review_scores_cleanliness}{}
#' \item{review_scores_checkin}{}
#' \item{review_scores_communication}{}
#' \item{review_scores_location}{}
#' \item{review_scores_value}{}
#' \item{requires_license}{}
#' \item{license}{}
#' \item{jurisdiction_names}{}
#' \item{instant_bookable}{}
#' \item{is_business_travel_ready}{}
#' \item{cancellation_policy}{}
#' \item{require_guest_profile_picture}{}
#' \item{require_guest_phone_verification}{}
#' \item{calculated_host_listings_count}{}
#' \item{calculated_host_listings_count_entire_homes}{}
#' \item{calculated_host_listings_count_private_rooms}{}
#' \item{calculated_host_listings_count_shared_rooms}{}
#' \item{reviews_per_month}{}
#' \item{reviews}{}
#' \item{extra_people2}{}
#' }
#' @source \url{http://insideairbnb.com/get-the-data.html}
"airbnb_rj"
