plot2 <- function(){
    ##Call the function to read the file and return a data frame
    df <- readFile()
    
    ##plot for global active power
    with(faithful, plot(df$DateTime, df$Global_active_power, type = "l", ylab="Global Active Power (kilowatts)", xlab = "")) 
    
    ##copy to a png file
    dev.copy(png, file = "./figure/plot2.png", width = 480, height = 480)
    dev.off()
}

