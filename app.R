library(shiny)

ui <- fluidPage(
  titlePanel("Welcome to Shiny App"),
  sliderInput("n", "Number of points", min = 10, max = 200, value = 100, step = 10),
  textInput("title", "Plot title", value = "Hello from GitHub Actions!"),
  plotOutput("plot")
)

server <- function(input, output, session) {
  output$plot <- renderPlot({
    plot(rnorm(input$n), main = input$title)
  })
}

shinyApp(ui = ui, server = server) 