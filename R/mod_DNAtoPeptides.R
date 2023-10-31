#' DNAtoPeptides UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_DNAtoPeptides_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      column(8, "DNA_sequence"),
      column(4, "random_dna_length", "generate_dna_button")
    ),
    "peptide_sequence"
  )
}

#' DNAtoPeptides Server Functions
#'
#' @noRd
mod_DNAtoPeptides_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_DNAtoPeptides_ui("DNAtoPeptides_1")

## To be copied in the server
# mod_DNAtoPeptides_server("DNAtoPeptides_1")
