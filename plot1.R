plot1 <- function(){
    ##Read file to df
    df <- readFile()
    
    ##plot for global active power
    with(faithful, hist(df$Global_active_power, main = "Global Active Power", xlab = "Global Active Power(kilowatts)"), ) 
    
    ##copy to a png file
    dev.copy(png, file = "./figure/plot1.png", width = 480, height = 480)
    dev.off()
}
