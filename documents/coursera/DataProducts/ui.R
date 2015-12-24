library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Stroke prediction"),

    sidebarPanel(
      numericInput('age', 'age in years', 40, min = 30, max = 90, step = 5),
      numericInput('SystolicBloodPressure', 'SystolicBloodPressure, mmHg', 120, min = 50, max = 240, step = 10),
      submitButton('Submit')
    ),
    mainPanel(
        h3('Results of prediction'),
        h4('Your age'),
        verbatimTextOutput("oage"),
        h4('You systolic blood pressure'),
        verbatimTextOutput("oSystolicBloodPressure"),
        h4('Your risk of having a stroke (<1 means no risk, 2 means 2 times of average) is '),
        verbatimTextOutput("prediction")
    )
  )
)
