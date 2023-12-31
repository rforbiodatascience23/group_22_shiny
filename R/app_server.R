#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  mod_aminoacid_abundance_server("aminoacid_abundance_1")
  mod_DNAtoPeptides_server("DNAtoPeptides_1")
}

mod_module22_server("module22_1")
