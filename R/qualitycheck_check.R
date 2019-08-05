
library(stringr)

qualitycheck_check <- function(df) {
  
  df_1<- matrix(t(df))
  
  for (i in 5:nrow(df_1)) {
      
      print(str_detect("Asp", df_1[i,]))
  
  }
  
}


example <- read.csv("Aspirina.csv")



example_1 <- t(example)

qualitycheck_check(example_1)

example
# row.names(example) <- example$X
# example$X <- NULL

# ACOMODAROS POR FECHA
#  DEBE TENER UNA COLUMNADE PRODUCTO; OTRA DE LOTE; OTRA DE PROTOCOLO; OTRA DE FECHA DE INICIO; 
 # OTRA CON FECHA EN LA QUE ESTAN Y LA FECHA EN LA QUE ESTA EL PASE DE CALIDAD 