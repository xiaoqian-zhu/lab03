library(shiny)

Advertising <- read.csv ("Advertising.csv")
Advertising <- Advertising[, 2:5]

ui <- fluidPage(
  headerPanel("Simple Linear Regression on Sales"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput('media', 'Explantory Variable', 
                  choices = c("TV", "Radio", "Newspaper"))),
      
      mainPanel(
        plotOutput("scatterPlot")
      )
    )
  )

server <- function(input, output) {
  
  selectedData <- reactive ({
    Advertising[, c(input$media, Sales)]
  
  })
  output$scatterPlot <- renderPlot({
    plot(Advertising[, input$media],
         Advertising$Sales,
         xlab = input$media,
         ylab = "Sales",
         col= "black",
         pch = 20, cex =0.8)
  })
}

shinyApp(ui = ui, server = server)