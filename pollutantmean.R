pollutantmean <- function(directory,pollutant,id=1:332){
  i <- 1
  r <- c()
  
    my_id <- str_pad(id, 3, pad = "0")
    nextfile <- paste(directory,"/",my_id,".csv",sep="")
    r <- c(r,nextfile)
    
  
  myfiles = do.call(rbind, lapply(r, function(x) read.csv(x, stringsAsFactors = FALSE)))
  my_mean=mean(na.omit(myfiles[,c(pollutant)]))
  my_mean 
  
}