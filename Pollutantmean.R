pollutantmean <- function(directory, pollutant, id = 1:332) {
  means <- c()
    {
      for(myfile in id)
      filepath <- paste(getwd(),"/",directory,"/",sprintf("%03d", myfile),".csv",sep = "")
      file_data <- read.csv(filepath)
      check_data <- file_data[pollutant]
      means <- c(means,check_data[!is.na(check_data)])
    } 
    mean(means)
  }