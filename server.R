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
