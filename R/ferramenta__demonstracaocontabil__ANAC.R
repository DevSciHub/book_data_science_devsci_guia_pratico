# Bibliotecas -------------------------------------------------------------
library(dplyr)

# Buscar os Dados
url = paste0("https://sistemas.anac.gov.br/dadosabertos/Operador%20A%C3%A9reo/Demonstra%C3%A7%C3%B5es%20Cont%C3%A1beis%20de%20Empresas%20Brasileiras%20de%20Transporte%20A%C3%A9reo%20P%C3%BAblico/Demonstracoes_Contabeis_2023.csv")

tbl_demonstracao <-
  utils::read.csv(url, header = FALSE, sep = ";") %>% 
  .[-1, ] %>% 
  rlang::set_names(.[1, ]) %>% 
  .[-1, ] %>% 
  janitor::clean_names() 
