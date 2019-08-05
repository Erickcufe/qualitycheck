#' qualitycheck_dates
#'
#'This function create a .csv document with 
#'the dates of a Lot of product since the date of departure date
#'
#'
#' @param Producto A character of the name of the product. Ej: "Aspirin"
#' @param Lote A character with the ID of the Lote
#' @param Fecha_inicio A character date with the format in numer day-month-year; ej: "01-08-2019"
#' @param Protocolo A character date with the ID of protocol if this exist 
#'
#' @return
#' This function return a .csv document with the name of the Pruduct_Lote.csv in the 
#' directory of work, this document include all dates.  
#' @export
#'
#' @examples
#' qualitycheck_dates("Aspririn", "Z0194", "03-03-2019")
#' qualitycheck_dates("Metformin", "0001", "08-01-2019")
#' 

# library(lubridate)
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


# a<-qualitycheck_dates("Aspirina", "Z0450", "10-06-2019")
# a<-qualitycheck_dates("Aspirina", "Z0450", "10-06-2019")


