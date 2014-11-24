monod <- function(C, K, r, plot = FALSE) {
        rC <- K*(C)/(C + r)
        output <- cbind(C, rC)
        if(plot == TRUE) {
                plot(output, type = "l", ylim = c(min(rC), max(rC + 2)))
        }
        print(output)
}

data <- seq(from = 0, to = 100, by = 0.2)

growth <- monod(data, 10, 5, plot = TRUE)
