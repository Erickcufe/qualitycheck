
library(lubridate)
# Para uno de cada uno
qualitycheck_dates <- function(Producto, Lote, Fecha_inicio, Protocolo){
  Fecha_inicio <- dmy(Fecha_inicio)
  
  if (missing(Protocolo)) {
    
    check_list <- (
      rbind(Producto = Producto, 
            Lote = Lote, 
            Fecha_inicio = as.character(Fecha_inicio),
            Protocolo = "")
    )
    
  } else {
    
    check_list <- (
      rbind(Producto = Producto, 
            Lote = Lote, 
            Fecha_inicio = as.character(Fecha_inicio),
            Protocolo = Protocolo)
    )
    
  }
 
  
  date1 <- Fecha_inicio + 30  
  date2 <- Fecha_inicio + (30 * 6)
  date3 <- Fecha_inicio + (30 * 9)
  date4 <- Fecha_inicio + (30 * 12)
  date5 <- Fecha_inicio + (30 * 18)
  date6 <- Fecha_inicio + (30 * 24)
  date7 <- Fecha_inicio + (30 * 36)
  date8 <- Fecha_inicio + (30 * 48)
  date9 <- Fecha_inicio + (30 * 60)
  
  check_list <- rbind(check_list, 
                      Mes_1 = as.character(date1),
                      Mes_6 = as.character(date2),
                      Mes_9 = as.character(date3),
                      Mes_12 = as.character(date4),
                      Mes_18 = as.character(date5),
                      Mes_24 = as.character(date6),
                      Mes_36 = as.character(date7),
                      Mes_48 = as.character(date8),
                      Mes_60 = as.character(date9))
  
  name_file <- paste0(Producto,"_", Lote)
  write.csv(check_list, paste0(name_file,".csv"))
  return(check_list)
  
  
}


a<-qualitycheck_dates("Aspirina", "Z0450", "10-06-2019")










df<-data.frame(
  producto= "Talidomina",
  Lote="APZ024",
  Fecha_inicio=dmy("10-06-2019")
)


