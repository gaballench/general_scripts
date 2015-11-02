monod <- function(C, K, r, plot = FALSE, labels = TRUE) {
        rC <- K*(C)/(C + r)
        output <- cbind(C, rC)
        if(plot == TRUE) {
                if(labels == TRUE) {
                plot(output, type = "l", ylim = c(min(rC), max(rC + 2)), 
                        main = "Bacterial growth over time", 
                        xlab = "Time", 
                        ylab = "Number of bacteria")
                }
                else {
                        plot(output, type = "l", ylim = c(min(rC), max(rC + 2)))
                }
        }
        print(output)
}

data <- seq(from = 0, to = 100, by = 0.2)

growth <- monod(data, 10, 5, plot = TRUE)
