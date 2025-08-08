# Module UI for the references page.
page_refs_ui <- function(id) {
  div(
    h2(
      "References",
      align = "left"
    ),
    tags$ol(
      tags$li(
      "Bowyer, F.T., Wood, R.A. and Yilales, M. 2024. Sea level controls on Ediacaran-Cambrian animal radiations. Science Advances, 10, eado6462", 
      tags$a(href="https://doi.org/10.1126/sciadv.ado6462", target="_blank", "https://doi.org/10.1126/sciadv.ado6462")
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