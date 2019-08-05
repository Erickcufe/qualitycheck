#' qualititycheck_lotes
#'
#' @param Producto A character of the name of the product. Ej: "Aspirin"
#' @param Lista_lotes A character vector with the ID of the Lote
#' @param Lista_fechas A character vector with date in the format in numer day-month-year; ej: "01-08-2019"
#'
#' @return
#' 
#' A .csv document with th dates of all lots 
#' 
#' @export
#'
#' @examples
#' b <- qualitycheck_lots("Aspirina", c("1a","2b","3c","4c"), c("10-09-2019", "20-03-2019","30-03-2019", "30-11-2019"))
#' 
qualitycheck_lotes <- function(Producto, Lista_lotes, Lista_fechas) {
    
  my_data<-list()  
  
    for (i in 1:length(Lista_lotes)){
      ejemplo <- qualitycheck_dates(Producto, Lote=Lista_lotes[i], 
                                  Fecha_inicio=Lista_fechas[i])
      my_data[[i]] <- ejemplo
      
    }  
    
    # maravailla<-data.frame(vector_vacio)
    mydf <- data.frame(my_data)
    colnames(mydf) <- Lista_lotes
    name_mydf <- paste0(Producto, ".csv")
    write.csv(mydf, name_mydf)
    return(mydf)
}




# df_product <- read.csv("Metformina_Z0450.csv")

# Lotes1 <- as.list(t(df_product[2,]))
# 
# Lotes <- as.vector(df_product[2,])





# for (i in 1:length(lot)){
  # ejemplo<-qualitycheck_lotes(Producto, lot[i], 
                              # dates[i])
# }  
