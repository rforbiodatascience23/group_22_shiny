#' aminoacid_abundance UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_aminoacid_abundance_ui <- function(id){
  ns <- NS(id)
  tagList(
    sidebarLayout(
      sidebarPanel(
        "peptide_sequence"
      ),
      mainPanel(
        "plot"
      )
    )
  )
}

#' aminoacid_abundance Server Functions
#'
#' @noRd
mod_aminoacid_abundance_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_aminoacid_abundance_ui("aminoacid_abundance_1")

## To be copied in the server
# mod_aminoacid_abundance_server("aminoacid_abundance_1")
