# ui script for ShinyStratigraphy
fluidPage(
    tags$head(
      tags$meta(name = "description", content = "An interactive web-based app for comparing different age models of Ediacaran-Cambrian stratigraphy"),
      tags$meta(name = "keywords", content = "ShinyStratigraphy, Cambrian, Ediacaran, Stratigraphy, Carbon isotopes, App")
    ),
  
  # theme = shinytheme("sandstone"),
  theme = bs_theme(bootswatch = "minty"),
  
  navbarPage(
    id = "ShinyStratigraphy",
    title = "Shiny Stratigraphy",

    tabPanel(
      title = HTML(paste0("\u03B4", tags$sup("13"), "C stratigraphy")),
        
      sidebarLayout(
        sidebarPanel(
          select_options_ui(id = "select_options")
        ),
          
        mainPanel(
          plot_d13c_age_ui(id = "plot_d13c_age")
        )
      )
    ),
    
    tabPanel(
      title = "About",
      page_about_ui(id = "About")
    ),

    tabPanel(
      title = "References",
      page_refs_ui(id = "Refs")
    )
  )
)
