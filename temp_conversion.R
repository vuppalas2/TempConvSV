# Creating the R functions

#' Fahrenheit to Celsius
#'
#' Convert temperatures from Fahrenheit to Celsius.
#' @param F_temp The temperature in degrees Fahrenheit.
#' @return The temperature in degrees Celsius.
#' @examples
#' temp1 <- F_to_C(32)
#' temp2 <- F_to_C(c(50, 68, 104))
#' @export
F_to_C <- function(F_temp) {
  C_temp <- (F_temp - 32) * 5/9
  return(C_temp)
}


#' Fahrenheit to Kelvin
#'
#' Convert temperatures from Fahrenheit to Kelvin.
#' @param F_temp The temperature in degrees Fahrenheit.
#' @return The temperature in degrees kelvin.
#' @examples
#' temp1 <- F_to_K(32)
#' temp2 <- F_to_K(c(50, 68, 104))
#' @export
F_to_K <- function(F_temp) {
  K_temp <- (F_temp - 32) * 5/9 + 273.15
  return(K_temp)
}


#' Celsius to Fahrenheit
#'
#' Convert temperatures from Celsius to Fahrenheit.
#' @param C_temp The temperature in degrees Celsius.
#' @return The temperature in degrees Fahrenheit.
#' @examples
#' temp1 <- C_to_F(0)
#' temp2 <- C_to_F(c(10, 20, 30))
#' @export
C_to_F <- function(C_temp) {
  F_temp <- (C_temp * 9/5) + 32
  return(F_temp)
}

#' Celsius to Kelvin
#'
#' Convert temperatures from Celsius to Kelvin.
#' @param C_temp The temperature in degrees Celsius.
#' @return The temperature in degrees Kelvin.
#' @examples
#' temp1 <- C_to_K(0)
#' temp2 <- C_to_K(c(10, 20, 30))
#' @export
C_to_K <- function(C_temp) {
  K_temp <- C_temp + 273.15
  return(K_temp)
}


#' Kelvin to Fahrenheit
#'
#' Convert temperatures from Kelvin to Fahrenheit.
#' @param K_temp The temperature in degrees Kelvin.
#' @return The temperature in degrees Fahrenheit.
#' @examples
#' temp1 <- K_to_F(273.15)
#' temp2 <- K_to_F(c(283.15, 293.15, 303.15))
#' @export
K_to_F <- function(K_temp) {
  F_temp <- (K_temp - 273.15) * 9/5 + 32
  return(F_temp)
}


#' Kelvin to Celsius
#'
#' Convert temperatures from Kelvin to Celsius.
#' @param K_temp The temperature in degrees Kelvin.
#' @return The temperature in degrees Celsius.
#' @examples
#' temp1 <- K_to_C(273.15)
#' temp2 <- K_to_C(c(283.15, 293.15, 303.15))
#' @export
K_to_C <- function(K_temp) {
  C_temp <- K_temp - 273.15
  return(C_temp)
}


#Test the functions:
F_to_C(32)                              # Should return 0
F_to_C(c(50, 68, 104))                  # Should return c(10, 20, 40)
F_to_K(32)                              # Should return 273.15
F_to_K(c(50, 68, 104))                  # Should return c(283.15, 293.15, 313.15)
C_to_F(0)                               # Should return 32
C_to_F(c(10, 20, 30))                   # Should return c(50, 68, 86)
C_to_K(0)                               # Should return 273.15
C_to_K(c(10, 20, 30))                   # Should return c(283.15, 293.15, 303.15)
K_to_F(273.15)                          # Should return 32
K_to_F(c(283.15, 293.15, 303.15))       # Should return c(50, 68, 86)
K_to_C(273.15)                          # Should return 0
K_to_C(c(283.15, 293.15, 303.15))       # Should return c(10, 20, 30)


