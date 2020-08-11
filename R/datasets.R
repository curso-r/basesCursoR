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

#' Ames Dataset
#'
#' Informações de casas vendidas na cidade de Ames, IA (EUA).
#'
#' O objetivo da base é prever o preço de venda de uma casa
#' a partir de suas características.
#'
#' @format Uma tibble com 2930 linhas e 77 variáveis:
#' \describe{
#'   \item{moradia_class}{tipo de moradia envolvida na venda.}
#'   \item{modaria_zoneamento}{classificação do zoneamento da venda.}
#'   \item{lote_fachada}{porção da fachada cercada por uma rua (pés).}
#'   \item{lote_area}{area do lote (pés quadrados).}
#'   \item{rua_tipo}{tipo de rua que dá acesso à propriedade.}
#'   \item{beco_tipo}{tipo do beco que dá acesso à propriedade.}
#'   \item{lote_formato}{formato da propriedade.}
#'   \item{terreno_contorno}{nivelamento da propriedade.}
#'   \item{utilidades}{tipo de utilizades disponível.}
#'   \item{lote_config}{configuração do lote.}
#'   \item{terreno_declive}{declive do terreno.}
#'   \item{vizinhanca}{Localizações físicas dentro dos limites da cidade de Ames.}
#'   \item{moradia_tipo}{tipo de moradia.}
#'   \item{moradia_estilo}{estilo da moradia.}
#'   \item{geral_qualidade}{avaliação do material e acabamento geral da casa.}
#'   \item{geral_condicao}{avaliação da condição geral da casa.}
#'   \item{construcao_ano}{ano de construção da casa.}
#'   \item{remodelacao_ano}{ano de remodelação da casa.}
#'   \item{telhado_estilo}{estilho do telhado.}
#'   \item{telhado_material}{material do qual o telhado é feito.}
#'   \item{exterior_cobertura_1}{cobertura do exterior da casa.}
#'   \item{exterior_cobertura_2}{cobertura do exterior da casa (se tiver mais de uma).}
#'   \item{alvenaria_tipo}{tipo de alvenaria da casa.}
#'   \item{alvenaria_area}{área da alvenaria (pés quadrados).}
#'   \item{exterior_qualidade}{avaliação da qualidade do material usado no exterior da casa.}
#'   \item{exterior_condicao}{avaliação da condição do exterior da casa.}
#'   \item{fundacao_tipo}{tipo da fundação da casa.}
#'   \item{porao_qualidade}{avaliação da altura do porão.}
#'   \item{porao_condicao}{avaliação da condição do porão.}
#'   \item{porao_exposicao}{refere-se a saída ou paredes no nível do jardim.}
#'   \item{porao_acabamento_1}{avaliação da área do porão com acabamento.}
#'   \item{porao_area_com_acabamento_1}{área do porão com acabamento (em pés quadrados).}
#'   \item{porao_acabamento_2}{avaliação da área do porão com acabamento (se houver várias).}
#'   \item{porao_area_com_acabamento_2}{área do porão com acabamento (em pés quadrados).}
#'   \item{porao_area_sem_acabamento}{área do porão sem acabamento (em pés quadrados).}
#'   \item{porao_area_total}{área total do porão (em pés quadrados).}
#'   \item{porao_num_banheiros}{número de banheiros do porão.}
#'   \item{porao_num_banheiros_lavabos}{número de lavabos do porão.}
#'   \item{aquecimento_tipo}{tipo de aquecimento instalado na casa.}
#'   \item{aquecimento_qualidade_condicao}{avaliação da qualidade e condição do aquecimento.}
#'   \item{ar_condicionado_central}{ar condicionado central da casa.}
#'   \item{sistema_eletrico_tipo}{tipo de sistema elétrico da casa.}
#'   \item{primeiro_andar_area}{área do primeiro andar (pés quadrados).}
#'   \item{segundo_andar_area}{área do segundo andar (pés quadrados).}
#'   \item{acabmento_baixa_qualidade_area}{área da casa com acabamento de baixa qualidade (pés quadrados).}
#'   \item{acima_solo_area}{área da casa acima do solo (pés quadrados).}
#'   \item{acima_solo_num_banheiros}{número de banheiros acima do solo.}
#'   \item{acima_solo_num_lavabos}{número de lavabos acima do solo.}
#'   \item{acima_solo_num_quartos}{número de quartos da casa.}
#'   \item{acima_solo_num_cozinhas}{número de cozinhas da casa.}
#'   \item{cozinha_qualidade}{qualidade da cozinha.}
#'   \item{acima_solo_num_comodos}{número de cômodos acima do solo.}
#'   \item{total_num_lareiras}{número total de lareiras.}
#'   \item{lareira_qualidade}{qualidade da(s) lareira(s).}
#'   \item{garagem_tipo}{localização da garagem.}
#'   \item{garagem_ano_construcao}{ano de construção da garagem.}
#'   \item{garagem_acabamento}{tipo de acabamento da garabem.}
#'   \item{garagem_capacidade_carros}{capacidade de carros da garagem.}
#'   \item{garagem_area}{área da garagem (pés quadrados).}
#'   \item{garagem_qualidade}{qualidade da garagem.}
#'   \item{garagem_condicao}{condição da garagem.}
#'   \item{entrada_veiculo_pavimentada}{pavimentação da entrada de veículos.}
#'   \item{deck_madeira_area}{área do deck de madeira da casa (em pés quadradas).}
#'   \item{varanda_aberta_area}{área da varanda coberta da casa (em pés quadradas).}
#'   \item{varanda_fechada_area}{área da varanda fechada da casa (em pés quadradas).}
#'   \item{varanda_3ssn_area}{área da varanda "three season" da casa (em pés quadradas).}
#'   \item{varanda_com_tela_area}{área da varanda com tela da casa (em pés quadradas).}
#'   \item{piscina_area}{área da piscina (em pés quadradas).}
#'   \item{piscina_qualidade}{qualidade da piscina.}
#'   \item{cerca_qualidade}{qualidade da cerca.}
#'   \item{funcionalidades_diversas}{funcionalidades diversas da casa (não incluidas nas outras categorias).}
#'   \item{funcionalidades_valor}{valor das funcionalidades diversas.}
#'   \item{venda_mes}{mês da venda.}
#'   \item{venda_ano}{ano da venda.}
#'   \item{venda_tipo}{tipo da venda.}
#'   \item{venda_condicao}{condição da venda.}
#'   \item{venda_valor}{valor da venda.}
#' }
#' @source \url{https://github.com/topepo/AmesHousing}
"ames"


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
