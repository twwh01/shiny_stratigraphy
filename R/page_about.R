# Module UI for the About page.
page_about_ui <- function(id) {
  div(
    h2(
      "About",
      align = "left"
    ),
    h4("What is Shiny Stratigraphy?"),
    p("Shiny Stratigraphy is an interactive web-based tool for comparing different stratigraphic models of the Ediacaran-Cambrian transition using R Shiny. It is in early development at present and is subject to change substantially and without warning until a first major version is released."),
    h4("Who's behind Shiny Stratigraphy?"),
    p("Thomas Wong Hearing developed the R-shiny app. Fred Bowyer produced the age models, including carbon isotope stratigraphic compilations (and biostratigraphy which will be added shortly)."),
  )
}

# Module server for the About page.
page_about_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # static web page
    # do nothing
  })
}