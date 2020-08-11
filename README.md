
<!-- README.md is generated from README.Rmd. Please edit that file -->

# basesCursoR

Bases (traduzidas para o Português) utilizadas nos cursos da Curso-R.

## Instalação

Para ter acesso a todas as bases, instale o pacote utilizando o código a
seguir:

``` r
# install.packages("devtools")
devtools::install_github("curso-r/basesCursoR")
```

## Exemplo

Para acessar uma base, basta rodar o código abaixo.

``` r
data(nome_da_base, package = "basesCursoR")
```

## Bases

Listamos abaixo as bases contidas no pacote.

#### Ames

  - Descrição: informações de casas vendidas na cidade de Ames, IA
    (EUA).
  - Dimensões: 2930 linhas e 77 colunas.
  - Fontes: tradução da base `AmesHousing::ames_raw`.

<!-- end list -->

``` r
data(ames, package = "basesCursoR")
head(tibble::tibble(ames))
#> # A tibble: 6 x 77
#>   lote_fachada lote_area lote_formato lote_config terreno_contorno
#>          <int>     <int> <chr>        <chr>       <chr>           
#> 1          141     31770 IR1          Corner      Lvl             
#> 2           80     11622 Reg          Inside      Lvl             
#> 3           81     14267 IR1          Corner      Lvl             
#> 4           93     11160 Reg          Corner      Lvl             
#> 5           74     13830 IR1          Inside      Lvl             
#> 6           78      9978 IR1          Inside      Lvl             
#> # … with 72 more variables: terreno_declive <chr>, rua_tipo <chr>,
#> #   beco_tipo <chr>, utilidades <chr>, vizinhanca <chr>, moradia_tipo <chr>,
#> #   moradia_estilo <chr>, moradia_class <chr>, modaria_zoneamento <chr>,
#> #   construcao_ano <int>, remodelacao_ano <int>, geral_qualidade <int>,
#> #   geral_condicao <int>, telhado_estilo <chr>, telhado_material <chr>,
#> #   exterior_cobertura_1 <chr>, exterior_cobertura_2 <chr>,
#> #   exterior_qualidade <chr>, exterior_condicao <chr>, tipo_alvenaria <chr>,
#> #   area_alvenaria <int>, fundacao_tipo <chr>, porao_qualidade <chr>,
#> #   porao_condicao <chr>, porao_exposicao <chr>, porao_acabamento_1 <chr>,
#> #   porao_acabamento_2 <chr>, porao_area_com_acabamento_1 <int>,
#> #   porao_area_com_acabamento_2 <int>, porao_area_sem_acabamento <int>,
#> #   porao_area_total <int>, porao_num_banheiros <int>,
#> #   porao_num_banheiros_lavabos <int>, aquecimento_tipo <chr>,
#> #   aquecimento_qualidade_condicao <chr>, ar_condicionado_central <chr>,
#> #   sistema_eletrico_tipo <chr>, primeiro_andar_area <int>,
#> #   segundo_andar_area <int>, acabmento_baixa_qualidade_area <int>,
#> #   acima_solo_area <int>, acima_solo_num_banheiros <int>,
#> #   acima_solo_num_lavabos <int>, acima_solo_num_quartos <int>,
#> #   acima_solo_num_cozinhas <int>, acima_solo_num_comodos <int>,
#> #   cozinha_qualidade <chr>, total_num_lareiras <int>, lareira_qualidade <chr>,
#> #   garagem_tipo <chr>, garagem_ano_construcao <int>, garagem_acabamento <chr>,
#> #   garagem_capacidade_carros <int>, garagem_area <int>,
#> #   garagem_qualidade <chr>, garagem_condicao <chr>,
#> #   entrada_veiculo_pavimentada <chr>, deck_madeira_area <int>,
#> #   varanda_aberta_area <int>, varanda_fechada_area <int>,
#> #   varanda_3ssn_area <int>, varanda_com_tela_area <int>, piscina_area <int>,
#> #   piscina_qualidade <chr>, cerca_qualidade <chr>,
#> #   funcionalidades_diversas <chr>, funcionalidades_valor <int>,
#> #   venda_ano <int>, venda_mes <int>, venda_tipo <chr>, venda_condicao <chr>,
#> #   venda_valor <int>
```
