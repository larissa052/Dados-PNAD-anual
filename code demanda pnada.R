install.packages("writexl")
library(writexl)
write_xlsx(PNADa, 'PNADa.xlsx')
write.csv(PNADa, 'PNADa.csv', row.names = FALSE)
install.packages("dplyr")
install.packages("dbplyr")
library(dplyr, warn.conflicts = FALSE)
library(readr)

########
setwd("C:\\Users\\laral\\OneDrive\\Documentos\\Demanda PNAD\\Dados 2015")
PES2015 <- read_fwf(
  file = "PES2015N.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(77, 78),
    anos_estudo = c(703, 704),
    co_ocupacao = c(157, 160)
  )
)
PES2014 <- read_fwf(
  file = "PES2014.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(79, 80),
    anos_estudo = c(680, 681),
    co_ocupacao = c(159, 162)
  )
)
PES2013 <- read_fwf(
  file = "PES2013.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(79, 80),
    anos_estudo = c(669, 670),
    co_ocupacao = c(159, 162)
  )
)
PES2012 <- read_fwf(
  file = "PES2012.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(79, 80),
    anos_estudo = c(664, 665),
    co_ocupacao = c(154, 157)
  )
)
PES2011 <- read_fwf(
  file = "PES2011.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(79, 80),
    anos_estudo = c(663, 664),
    co_ocupacao = c(153, 156)
  )
)
PES2009 <- read_fwf(
  file = "PES2009.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(77, 78),
    anos_estudo = c(659, 660),
    co_ocupacao = c(151, 154)
  )
)
PES2008 <- read_fwf(
  file = "PES2008.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(75, 76),
    anos_estudo = c(654, 655),
    co_ocupacao = c(147, 150)
  )
)
PES2007 <- read_fwf(
  file = "PES2007.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(75, 76),
    anos_estudo = c(650, 651),
    co_ocupacao = c(145, 148)
  )
)
PES2006 <- read_fwf(
  file = "PES2006.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(70, 71),
    anos_estudo = c(670, 671),
    co_ocupacao = c(141, 144)
  )
)
PES2005 <- read_fwf(
  file = "PES2005.txt",
  fwf_cols(
    ano = c(1, 4),
    uf = c(5, 6),
    sexo = c(18, 18),
    "Idade do morador na data de referência" = c(27, 29),
    raca_cor = c(33, 33),
    escolaridade = c(70, 71),
    anos_estudo = c(696, 697),
    co_ocupacao = c(141, 144)
  )
)
###########
PES2015 <- filter(PES2015, sexo == 4)
PES2014 <- filter(PES2014, sexo == 4)
PES2013 <- filter(PES2013, sexo == 4)
PES2012 <- filter(PES2012, sexo == 4)
PES2011 <- filter(PES2011, sexo == 4)
PES2009 <- filter(PES2009, sexo == 4)
PES2008 <- filter(PES2008, sexo == 4)
PES2007 <- filter(PES2007, sexo == 4)
PES2006 <- filter(PES2006, sexo == 4)
PES2005 <- filter(PES2005, sexo == 4)

###############
PES2015$co_ocupacao_1_digito = substr(PES2015$co_ocupacao, 0, 1)
PES2014$co_ocupacao_1_digito = substr(PES2014$co_ocupacao, 0, 1)
PES2013$co_ocupacao_1_digito = substr(PES2013$co_ocupacao, 0, 1)
PES2012$co_ocupacao_1_digito = substr(PES2012$co_ocupacao, 0, 1)
PES2011$co_ocupacao_1_digito = substr(PES2011$co_ocupacao, 0, 1)
PES2009$co_ocupacao_1_digito = substr(PES2009$co_ocupacao, 0, 1)
PES2008$co_ocupacao_1_digito = substr(PES2008$co_ocupacao, 0, 1)
PES2007$co_ocupacao_1_digito = substr(PES2007$co_ocupacao, 0, 1)
PES2006$co_ocupacao_1_digito = substr(PES2006$co_ocupacao, 0, 1)
PES2005$co_ocupacao_1_digito = substr(PES2005$co_ocupacao, 0, 1)

################
PNADa <- rbind(
  PES2015,
  PES2014,
  PES2013,
  PES2012,
  PES2011,
  PES2009,
  PES2008,
  PES2007,
  PES2006,
  PES2005
)

#######################
library(dplyr) # >= 0.7.0
PNADa <-   PNADa %>%
  mutate(
    desc_sexo = case_when(sexo == 2 ~ "Masculino",
                          sexo == 4 ~ "Feminino"),
    desc_uf = case_when(
      uf == 11 ~ "Rondônia",
      uf ==  12  ~ "Acre",
      uf == 13 ~ "Amazonas",
      uf == 14 ~ "Roraima",
      uf == 15 ~ "Pará",
      uf == 16 ~ "Amapá",
      uf == 17 ~ "Tocantins",
      uf == 21 ~ "Maranhão",
      uf == 22 ~ "Piauí",
      uf == 23 ~ "Ceará",
      uf == 24 ~ "Rio Grande do Norte",
      uf == 25 ~ "Paraíba",
      uf == 26 ~ "Pernambuco",
      uf == 27 ~ "Alagoas",
      uf == 28 ~ "Sergipe",
      uf == 29 ~ "Bahia",
      uf == 31 ~ "Minas Gerais",
      uf == 32 ~ "Espírito Santo",
      uf == 33 ~ "Rio de Janeiro",
      uf == 35 ~ "São Paulo",
      uf == 41 ~ "Paraná",
      uf == 42 ~ "Santa Catarina",
      uf == 43 ~ "Rio Grande do Sul",
      uf == 50 ~ "Mato Grosso do Sul",
      uf == 51 ~ "Mato Grosso",
      uf == 52 ~ "Goiás",
      uf == 53 ~ "Distrito Federal"
    ),
    "desc Cor ou raça" = case_when(
      raca_cor == 2	~  "Branca",
      raca_cor == 4	~  "Preta",
      raca_cor == 6	~  "Amarela",
      raca_cor == 8	~  "Parda",
      raca_cor == 0	~  "Indígena",
      raca_cor == 9	~  "Sem declaração"
    ),
    "Curso mais elevado que frequentou anteriormente" = case_when(
      escolaridade == "01"	~ "Elementar (primário)",
      escolaridade == "02"	~ "Médio 1º ciclo (ginasial, etc.)",
      escolaridade == "03"	~ "Médio 2º ciclo (científico, clássico, etc.)",
      escolaridade == "04"	~ "Regular do ensino fundamental ou do 1º grau",
      escolaridade == "05"	~ "Regular do ensino médio ou do 2º grau",
      escolaridade == "06"	~ "Educação de jovens e adultos ou supletivo do ensino fundamental ou do 1º grau",
      escolaridade == "07"	~ "Educação de jovens e adultos ou supletivo de ensino médio ou do 2º grau",
      escolaridade == "08"	~ "Superior de graduação",
      escolaridade == "09"	~ "Mestrado ou doutorado",
      escolaridade == "10"	~ "Alfabetização de jovens e adultos",
      escolaridade == "11"	~ "Creche",
      escolaridade == "12"	~ "Classe de alfabetização - CA",
      escolaridade == "13"	~ "Maternal, jardim de infância etc."
    ),
    "Anos de estudo(todas as pessoas)" = case_when(
      anos_estudo == 01	~ "Sem instrução e menos de 1 ano",
      anos_estudo == 02 ~  "1 ano",
      anos_estudo == 03 ~  "2 anos",
      anos_estudo == 04 ~  "3 anos",
      anos_estudo == 05 ~  "4 anos",
      anos_estudo == 06 ~  "5 anos",
      anos_estudo == 07 ~  "6 anos",
      anos_estudo == 08 ~  "7 anos",
      anos_estudo == 09 ~  "8 anos",
      anos_estudo == 10 ~  "9 anos",
      anos_estudo == 11 ~  "10 anos",
      anos_estudo == 12 ~  "11 anos",
      anos_estudo == 13 ~  "12 anos",
      anos_estudo == 14 ~  "13 anos",
      anos_estudo == 15 ~  "14 anos",
      anos_estudo == 16 ~  "15 anos ou mais",
      anos_estudo == 17 ~  "Não Determinados"
    )
  )

########
PNADa$`Idade do morador na data de referência` <-
  as.numeric(PNADa$`Idade do morador na data de referência`)

#########
write.csv(PNADa, 'PNADa.csv', row.names = FALSE)