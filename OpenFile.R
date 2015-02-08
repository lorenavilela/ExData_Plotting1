##Read household_power_consumption.txt file and select date from '2007-02-01' to '2007-02-02'

readFile <- function(){
    ## Read file and asign to a data frame
    df <- read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
        
    ##Format date column for comparison
    df$Date <- as.Date(strptime(as.character(df$Date), format ="%d/%m/%Y"))
 
    time <- c(as.character(df$Time))
    date <- c(df$Date)
    dateTime <- paste(date, time)
    
    df$DateTime <- strptime(as.character(dateTime), format ="%Y-%m-%d %H:%M:%S")
  
    ##Subset data frame according to required interval
    df<- df[df$Date %in% as.Date(c('2007-02-01', '2007-02-02')),]

  return(df)
}
