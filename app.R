library(shiny)

ui <- fluidPage(
  titlePanel("Welcome to Shiny App"),
  mainPanel(
    h2("Hello from GitHub Actions!"),
    p("This Shiny app is running through a Cloudflared tunnel."),
    plotOutput("plot")
  )
)

server <- function(input, output, session) {
  output$plot <- renderPlot({
    plot(1:10, main = "Sample Plot", type = "l", col = "blue")
  })
}

shinyApp(ui = ui, server = server) 