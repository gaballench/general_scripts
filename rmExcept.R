## Description
#
#Function for cleaning the global environment except those elements indicated in the `except` argument
#
## Arguments
#
#`except` = An atomic vector indicating the name(s) of the element(s) to preserve in the global environment.

rmExcept <- function(except) {
    rm(list = ls(envir = .GlobalEnv)[!(ls(envir = .GlobalEnv) %in% c(except, "rmExcept"))], 
        envir = .GlobalEnv)
}