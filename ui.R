library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Diamond Price Forecast"),
    
    sidebarPanel(
      numericInput(inputId = 'numCarat', label = 'Carats', value =  1.0, min = 0.5, max = 5, step = 0.1),
      
      radioButtons(inputId = "radioCut", label = "Cut",
                choices = c("Fair" = 1,
                            "Good" = 2,
                            "Very Good" = 3,
                            "Premium" = 4,
                            "Ideal" = 5), selected = 3
      ),
      
      radioButtons(inputId = "radioColor", label = "Color (Descending Quality)",
                   choices = c("D" = 1,
                               "E" = 2,
                               "F" = 3,
                               "G" = 4,
                               "H" = 5,
                               "I" = 6,
                               "J" = 7), selected = 3
      ),
      
      radioButtons(inputId = "radioClarity", label = "Clarity",
                   choices = c("I1" = 1,
                               "SI2" = 2,
                               "SI1" = 3,
                               "VS2" = 4,
                               "VS1" = 5,
                               "VVS2" = 6,
                               "VVS1" = 7,
                               "IF" = 8), selected = 4
      )
    ),
    
    mainPanel(
      h3("Your Prediction"),
      h3(verbatimTextOutput("prediction"))
      #plotOutput('newHist')
    )
  )  
)