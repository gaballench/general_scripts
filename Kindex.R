
Fc <- function(citations) {F <- 43.3*citations^0.32; return(F)}

Kindex <- function(citations, followers) {K <- followers / Fc(citations); return(K)}

