library(shiny)
library(caret)

shinyUI(
  
  navbarPage("MPG Predictor",
  tabPanel( "Predicte MPG",
    sidebarPanel(
          selectInput('cyl','No of Cylinder:', choices = c("4","8")),
          sliderInput('disp', "Displacement in cubic in:", min = 100, max = 500, value = 250),
          numericInput('horse', 'Gross Horsepower:', 50, min = 50, max= 400, step = 1),
          numericInput('weight', 'Weight(lb/1000):', 3, min = 1.5, max= 6, step = 0.1),
          radioButtons('am', 'Automatic or Manual:', list("Automatic" = 0,
                                                          "Manual" = 1))
                ),
    
          mainPanel(
            h3 ('MPG Prediction:'),
            
            h4('No of Cylinder Entered:'),
            verbatimTextOutput('cyl'),
            h4('Horse Power Entered:'),
            verbatimTextOutput('hp'),

            h4('Transmission Entered'),
            verbatimTextOutput('am'),
            
            
            h4('Predicted MPG:'),
            verbatimTextOutput("prediction")
                   )
          ),
   
  tabPanel("About",
          mainPanel(
          h3("About MPG Predictor"),
          p("This predictor can be use to predict the Miles per gallon of a car"),
          p("Just set the parameter of your car, to the input buttons. Predictor will predict the MPG")
          
          )
          )
  
            )
  
  
  )
  
