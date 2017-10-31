### Small function for converting longitudes in Bogotá-centered systems to Greenwich-centered modern coordinates. This is particularly useful for maps from the 19th century that were either centered in Bogotá or Paris
## the only argument, x, represents the longitude. x should be positive if the point is located east of Bogotá, and negative otherwise.
## The Bogotá longitude is based on current coordinates, so no error assessment was carried out.
## This is a quick and dirty method supposed to aid in georreferencing localities from the 19th century in what was then known as Nueva Granada. Maps were unaccurate, so using this quick method won't hurt by adding a bit more uncertainty to an already-uncertain coordinate system

fromBOG <- function {
    x <- x - 74.0834
    return(x)
}


