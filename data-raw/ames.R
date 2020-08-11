## code to prepare `ames` dataset goes here

library(dplyr)

ames <- AmesHousing::ames_raw %>%
  janitor::clean_names() %>%
  select(
    lote_fachada = lot_frontage,
    lote_area = lot_area,
    lote_formato = lot_shape,
    lote_config = lot_config,
    terreno_contorno = land_contour,
    terreno_declive = land_slope,
    rua_tipo = street,
    beco_tipo = alley,
    utilidades = utilities,
    vizinhanca = neighborhood,
    moradia_tipo = bldg_type,
    moradia_estilo = house_style,
    moradia_class = ms_sub_class,
    modaria_zoneamento = ms_zoning,
    construcao_ano = year_built,
    remodelacao_ano = year_remod_add,
    geral_qualidade = overall_qual,
    geral_condicao = overall_cond,
    telhado_estilo = roof_style,
    telhado_material = roof_matl,
    exterior_cobertura_1 = exterior_1st,
    exterior_cobertura_2 = exterior_2nd,
    exterior_qualidade = exter_qual,
    exterior_condicao = exter_cond,
    tipo_alvenaria = mas_vnr_type,
    area_alvenaria = mas_vnr_area,
    fundacao_tipo = foundation,
    porao_qualidade = bsmt_qual,
    porao_condicao = bsmt_cond,
    porao_exposicao = bsmt_exposure,
    porao_acabamento_1 = bsmt_fin_type_1,
    porao_acabamento_2 = bsmt_fin_type_2,
    porao_area_com_acabamento_1 = bsmt_fin_sf_1,
    porao_area_com_acabamento_2 = bsmt_fin_sf_2,
    porao_area_sem_acabamento = bsmt_unf_sf,
    porao_area_total = total_bsmt_sf,
    porao_num_banheiros = bsmt_full_bath,
    porao_num_banheiros_lavabos = bsmt_half_bath,
    aquecimento_tipo = heating,
    aquecimento_qualidade_condicao = heating_qc,
    ar_condicionado_central = central_air,
    sistema_eletrico_tipo = electrical,
    primeiro_andar_area = x1st_flr_sf,
    segundo_andar_area = x2nd_flr_sf,
    acabmento_baixa_qualidade_area = low_qual_fin_sf,
    acima_solo_area = gr_liv_area,
    acima_solo_num_banheiros = full_bath,
    acima_solo_num_lavabos = half_bath,
    acima_solo_num_quartos = bedroom_abv_gr,
    acima_solo_num_cozinhas = kitchen_abv_gr,
    acima_solo_num_comodos = tot_rms_abv_grd,
    cozinha_qualidade = kitchen_qual,
    total_num_lareiras = fireplaces,
    lareira_qualidade = fireplace_qu,
    garagem_tipo = garage_type,
    garagem_ano_construcao = garage_yr_blt,
    garagem_acabamento = garage_finish,
    garagem_capacidade_carros = garage_cars,
    garagem_area = garage_area,
    garagem_qualidade = garage_qual,
    garagem_condicao = garage_cond,
    entrada_veiculo_pavimentada = paved_drive,
    deck_madeira_area = wood_deck_sf,
    varanda_aberta_area = open_porch_sf,
    varanda_fechada_area = enclosed_porch,
    varanda_3ssn_area = x3ssn_porch,
    varanda_com_tela_area = screen_porch,
    piscina_area = pool_area,
    piscina_qualidade = pool_qc,
    cerca_qualidade = fence,
    funcionalidades_diversas = misc_feature,
    funcionalidades_valor = misc_val,
    venda_ano = yr_sold,
    venda_mes = mo_sold,
    venda_tipo = sale_type,
    venda_condicao = sale_condition,
    venda_valor = sale_price
  )

usethis::use_data(ames, overwrite = TRUE)

# Documentacao

ames %>%
  names() %>%
  paste0("#' \\item{", ., "}{}", collapse = "\n") %>%
  cat()

