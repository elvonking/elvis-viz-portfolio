
library("shiny")
library("shinythemes")

ui <- fluidPage(theme = shinytheme("cerulean"),
                navbarPage("Elvis Portfolio",
                           tabPanel("Sales Dashboard",
                                    h3("Timeline: July 2022"),
                                    h3("Users: Senior management team, commercial teams, field teams"),
                                    h3("Platform and Tools: SQL, PostgreSQL, Redash"),
                                    h3("Initial Design Considerations"),
                                    p("The dashboard had to answer the following key questions:"),
                                    p("1. How are sales performing today vs yesterday?"),
                                    p("2. How are we performing compared to this time last week?"),
                                    p("3. What are the projected sales numbers at COB today?"),
                                    p("4. What is the deviation from yesterday?"),
                                    p("This dashboard contains a lot of textboxes that gives users contextual information
                                      and potential tangent points to seek deeper insights in more detailed dashboards."),
                                    p("The dashboard also needed to be filterable by date, county, sales channel
                                      and season."),
                                    p("All these questions are answered in the sales report which uses linear 
                                      regression for forecasting."),
                                    br(),
                                    br(),
                                    plotOutput("plot3"),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    h4("Further Design Choices"),
                                    p("Conversion is a big deal in sales, and ultimately, you want a customer to go
                                      through the entire sales funnel. Seeing this data visually is an intuitive
                                      way to inform decisions regarding performance and identifying bottlenecks."),
                                    plotOutput("plot4"),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    h4("Agent Productivity and Targets"),
                                    p("Understanding sales numbers requires a view of the future targets as well as 
                                      the performance of the underlying factors that influence sales."),
                                    p("In this case, agent hiring and produtivity would influence sales."),
                                    p("Management teams often measureproductivity and rewards based on target achievement, 
                                      as such, these two views were included."),
                                    br(),
                                    h5("Agent Productivity"),
                                    plotOutput("plot5"),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    h5("Targets"),
                                    plotOutput("plot6"),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    h4("Sales Velocity Charts"),
                                    p("Sales team leads often want a view of how sales are doing as absolute numbers vs 
                                      seven day averages. These views enable them assess the impact of market activations 
                                      and promotions on the fly."),
                                    br(),
                                    plotOutput("plot7")
                           ),
                           tabPanel("KE Elections Timeline Dashboard",
                                    h3("Timeline: December 2022"),
                                    h3("Users: Anyone curious about Kenyan Elections"),
                                    h3("Platform and Tools: Excel, Tableau"),
                                    h3("Initial Design Considerations"),
                                    p("In the aftermath of the General Elections 2022, I wanted to make a visualization
                                      that allowed a user to go back in time and get a quick summary of all elections in Kenya."),
                                    p("A user can click the left or right arrow buttons to go back or forward in time respectively.
                                      Clicking on a specific year reveals information about that election and it's winner."),
                                    br(),
                                    br(),
                                    plotOutput("plot1")
                           ),
                           tabPanel("Two Wheels Year Review Dashboard",
                                    h3("Timeline: September 2022"),
                                    h3("Users: A sales team and a senior management team"),
                                    h3("Platform and Tools: R, RStudio, Tableau"),
                                    h3("Initial Design Considerations"),
                                    p("This dashboard is aimed at providing a simple and elegant executive summary of a companies
                                      performance in a year."),
                                    p("Senior management teams can use it to get a quick sense of the year in review and is a 
                                      starting point for deeper analysis."),
                                    br(),
                                    br(),
                                    plotOutput("plot2")
                           ),
                           tabPanel("About",
                                    titlePanel("About"),
                                    h5("What is in my portfolio?"),
                                    h5("Sales Dashboard"),
                                    br(),
                                    p("The target user for this dashboard is the senior management team looking 
                                      to get a quick glance at how the companies sales are performing. 
                                      It also shows sales velocity and agent activity."),
                                    p("The extra information contextualizes the sales performance. 
                                      Sales velocity charts show the absolute daily sales and the seven day 
                                      lagging averages to allow a simple view of how different marketing efforts 
                                      impact performance."),
                                    p("This dashboard was built on Redash using queries written in SQL from a PostgreSQL database."),
                                    br(),
                                    h5("All Kenyan Elections Ever"),
                                    br(),
                                    p("This is a scroll-able timeline of all Kenyan elections since 1963. 
                                      It shows the election year, the winner of the Presidential election and a 
                                      summary of the key events about the election."),
                                    p("The dashboard is made with a custom dataset based on data from Wikipedia."),
                                    p("Timeline visualizations such as this can be used in different scenarios including 
                                      historical events, order of things, future benchmark tracking and detailing progress 
                                      towards time bound goals."),
                                    br(),
                                    h5("Two Wheels Year Review"),
                                    br(),
                                    p("Lastly, the Two Wheels Year Review dashboard was built on Tableau using open source data from the internet. 
                                      I did the data cleaning on RStudio before exporting a CSV and visualizing the outputs."),
                                    br(),
                                    br(),
                                    h4("This portfolio is an RShiny app.")
                                    
                           )
                )
)
server <- function(input, output) {
  output$plot1 <- renderImage({
    filename <- normalizePath(file.path('./images',
                                        'ke-elections.png'))
    
    # Return a list containing the filename
    list(src = filename)
  }, deleteFile = FALSE)
  
  output$plot2 <- renderImage({
    filename1 <- normalizePath(file.path('./images',
                                        'two-wheels.png'))
    
    # Return a list containing the filename1
    list(src = filename1)
  }, deleteFile = FALSE)
  
  output$plot3 <- renderImage({
    filename2 <- normalizePath(file.path('./images',
                                        'sales-report.png'))
    
    # Return a list containing the filename2
    list(src = filename2)
  }, deleteFile = FALSE)
  
  output$plot4 <- renderImage({
    filename3 <- normalizePath(file.path('./images',
                                         'sales-funnel.png'))
    
    # Return a list containing the filename2
    list(src = filename3)
  }, deleteFile = FALSE)
  
  output$plot5 <- renderImage({
    filename4 <- normalizePath(file.path('./images',
                                         'agent-productivity.png'))
    
    # Return a list containing the filename2
    list(src = filename4)
  }, deleteFile = FALSE)
  
  output$plot6 <- renderImage({
    filename5 <- normalizePath(file.path('./images',
                                         'targets.png'))
    
    # Return a list containing the filename2
    list(src = filename5)
  }, deleteFile = FALSE)
  
  output$plot7 <- renderImage({
    filename6 <- normalizePath(file.path('./images',
                                         'sales-velocity.png'))
    
    # Return a list containing the filename2
    list(src = filename6)
  }, deleteFile = FALSE)
}

shinyApp(ui = ui, server = server)
