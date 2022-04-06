library(tidyverse)

fiiData_or <- vroom::vroom('Data/fiiData.csv')
fiiDataRanking_or <- vroom::vroom('Data/fiiDataRanking.csv')


fiiData_or %>% names

campos <- c(
  cod_neg = "Código Negociação",
  nome_gestor = "Gestor",
  categoria  = "Categoria",
  dt_ipo = "Data IPO",
  rs_ipo = "Valor IPO",
  liq_med_dia = "Liquidez Média Diária Mês Atual",
  rs_patr = "Valor Patrimonial",
  p_vpa = "P/VPA",
  renda_m2 = "Renda Por M2 (Última)",
  rs_m2_patr = "Valor M² Patrimonial",
  area_locavel = "Área Bruta Locável",
  cotacao = "Cotação Fechamento"
)

fiiData_or %>% 
  select(campos)

