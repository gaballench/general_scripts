## Description
#
#Function for cleaning the global environment except those elements indicated in the `except` argument
#
## Arguments
#
#`except` = An atomic vector indicating the name(s) of the element(s) to preserve in the global environment.
#
## Author
# Gustavo A. Ballen. 09-may2017

rmExcept <- function(except) {
    except <- c(except, "rmExcept")
    rm(list = ls(envir = .GlobalEnv)[!(ls(envir = .GlobalEnv) %in% except)], 
        envir = .GlobalEnv)
}
