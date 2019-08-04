

qualitycheck_dates <- function(Producto, Lote, Fecha_inicio, Protocolo){
  Fecha_inicio <- dmy(Fecha_inicio)
  
  check_list <- (
    rbind(Producto = Producto, 
          Lote = Lote, 
          Fecha_inicio = as.character(Fecha_inicio),
          Protocolo = Protocolo)
  )
  
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
                      Fecha1 = as.character(date1),
                      Fecha2 = as.character(date2),
                      Fecha3 = as.character(date3),
                      Fecha4 = as.character(date4),
                      Fecha5 = as.character(date5),
                      Fecha6 = as.character(date6),
                      Fecha7 = as.character(date7),
                      Fecha8 = as.character(date8),
                      Fecha9 = as.character(date9))
  return(check_list)
  
}

a <- qualitycheck_dates("Metformina", "Z0450", "10-06-2019", "AP123")

library(lubridate)

df<-data.frame(
  producto= "Talidomina",
  Lote="APZ024",
  Fecha_inicio=dmy("10-06-2019")
)

"10-06-2019"
# fechas siguientes 
# 1 mes
# 6, 9, 12, 18, 24, 36, 48, 60 

# day-moth-year

dmy("15-10-2011") + 30
