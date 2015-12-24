#Developing data product - Shiny application

#Server.R file for the shiny app

#This app aims to find out a person's risk of stroke by inputting systolic blood pressure

library(shiny)

strokeRisk <- function(age,SystolicBloodPressure) age /100 + SystolicBloodPressure / 300

shinyServer(
  function(input, output) {
    output$oage <- renderPrint({input$age})
    output$oSystolicBloodPressure <- renderPrint({input$SystolicBloodPressure})
    output$prediction <- renderPrint({strokeRisk(input$age,input$SystolicBloodPressure)})
  }
)