#  Para una lista de lotes 
#' Title
#'
#' @param Producto 
#' @param Lista_lotes 
#' @param Lista_fechas 
#'
#' @return
#' @export
#'
#' @examples
qualitycheck_lotes <- function(Producto, Lista_lotes, Lista_fechas) {
    
  my_data<-list()  
  
    for (i in 1:length(Lista_lotes)){
      ejemplo<-qualitycheck_dates(Producto, Lote=Lista_lotes[i], 
                                  Fecha_inicio=Lista_fechas[i])
      my_data[[i]] <- ejemplo
      
    }  
    
    # maravailla<-data.frame(vector_vacio)
    mydf <- data.frame(my_data)
    name_mydf <- paste0(Producto, ".csv")
    write.csv(mydf, name_mydf)
    return(mydf)
}




df_product <- read.csv("Metformina_Z0450.csv")

Lotes1 <- as.list(t(df_product[2,]))

Lotes <- as.vector(df_product[2,])


b <- qualitycheck_lotes("Aspirina",
                        c("1a","2b","3c","4c"),
                       c("10-09-2019", "20-03-2019",
                          "30-03-2019", "30-11-2019"))


for (i in 1:length(lot)){
  ejemplo<-qualitycheck_lotes(Producto, lot[i], 
                              dates[i])
}  
