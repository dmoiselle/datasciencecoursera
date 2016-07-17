complete <- function(directory,id=1:332){
  
  r <- c()
  
  my_id <- str_pad(id, 3, pad = "0")
  nextfile <- paste(directory,"/",my_id,".csv",sep="")
  r <- c(r,nextfile)
  
  nobs <- sapply( r, function(x) sum(complete.cases(read.csv(x))))
  
  data.frame(id, nobs, row.names = 1:length(nobs))
  
}