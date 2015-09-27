library(shiny)


data(mtcars)

RegModel <- lm(mpg ~ factor(cyl) + disp + hp + wt +factor(am), data=mtcars)

shinyServer(
  function(input, output) { 
    output$prediction <- renderPrint ({
      cyl = input$cyl
      disp = input$disp
      hp = input$horse
      wt = input$weight
      am = input$am
      as.numeric(predict(RegModel,data.frame(cyl, disp, hp, wt,am))[1])})
    
      output$cyl = renderText({input$cyl})
      output$hp = renderText({input$horse})
      output$wt = renderText({input$wt})
      output$am = renderText({input$am})
     
  }
)