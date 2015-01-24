library(shiny)

CalculatePrice <- function(carat, cut, clarity, color){
  intcept <- -4600
  values <- as.numeric(c(carat, cut, clarity, color))
  coefs <- c(8768, 155, -321, 524) 
  prod <- coefs * values
  price <- intcept + sum(prod)
  if(price < 0) price <- 0
  price
}

shinyServer(
  function(input, output) {
    output$prediction <- renderPrint({CalculatePrice(input$numCarat, input$radioCut, input$radioColor, input$radioClarity)})
  }
)
