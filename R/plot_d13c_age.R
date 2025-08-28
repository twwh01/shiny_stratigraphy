# Module UI for the d13C page.
plot_d13c_age_ui <- function(id) {
  ns <- NS(id)
  tagList(
    # textOutput(outputId = ns("background")), 
    plotOutput(outputId = ns("plot"), height = "600px")
  )
}


plot_d13c_age_server <- function(
    id, 
    indata, 
    selections
  ) {
  moduleServer(
    id, 
    function(input, output, session) {
      
      plot_data <- reactive({
        indata %>%
          dplyr::filter(
            age_model %in% selections$age_models()
          )
      })
      
      # make background dataset for ggplot annotation
      background_dataset <- reactive({
          indata %>% 
            dplyr::filter(
              age_model %in% selections$background_model()
            )
      })
        
      age_max_lim <- reactive({
        selections$age_max()
      })
      age_min_lim <- reactive({
        selections$age_min()
      })

      output$plot <- renderPlot({
        plot_d13c(plot_data(), background_dataset(), age_max_lim(), age_min_lim())
      })
    }
  )
}
