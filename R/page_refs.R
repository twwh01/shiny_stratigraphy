# Module UI for the references page.
page_refs_ui <- function(id) {
  div(
    h2(
      "References",
      align = "left"
    ),
    tags$ul(
      
      tags$li(
        "Bowyer, F.T., Uahengo, C.-I., et al. 2023. 
        Constraining the onset and environmental setting of metazoan biomineralization: The Ediacaran Nama Group of the Tsaus Mountains, Namibia. 
        Earth and Planetary Science Letters, 620, 118336, ", 
        tags$a(href="https://doi.org/10.1016/j.epsl.2023.118336", target="_blank", "https://doi.org/10.1016/j.epsl.2023.118336"),
        "."
      ),
      
      tags$li(
        "Bowyer, F.T., Wood, R.A. and Yilales, M. 2024. 
        Sea level controls on Ediacaran-Cambrian animal radiations. 
        Science Advances, 10, eado6462, ", 
        tags$a(href="https://doi.org/10.1126/sciadv.ado6462", target="_blank", "https://doi.org/10.1126/sciadv.ado6462"),
        "."
      ),
      
      tags$li(
        "Westerhold, T., Agnini, C., et al. 2024. 
        Timing Is Everything. 
        Paleoceanography and Paleoclimatology, 39, e2024PA004932, ",
        tags$a(href="https://doi.org/10.1029/2024PA004932", target="_blank", "https://doi.org/10.1029/2024PA004932"),
        "."
      )
    )
  )
}


# Module server for the references page.
page_refs_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # static page
    # do nothing
  })
}