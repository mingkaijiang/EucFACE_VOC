make_lai_variable <- function(){
    
    res <- download_lai_variable()
    
    res <- subset(res, select=c(Date, Ring, LAI))
    names(res)[3] <- "lai_variable"
    
    #- return a number for ring
    res$Ring <- as.numeric(res$Ring)
    
    # Only use data period 2012-2018
    res <- res[res$Date<="2018-12-31",]
    
    return(res)
    
}

