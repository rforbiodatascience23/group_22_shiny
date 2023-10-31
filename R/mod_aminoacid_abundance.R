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
    shiny::sidebarLayout(
      shiny::sidebarPanel(
        shiny::textAreaInput(
          inputId = ns("peptide"),
          label = "Peptide sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      shiny::mainPanel(
        shiny::plotOutput(
          outputId = ns("abundance")
        )

      )
    )
  )
}

#' aminoacid_abundance Server Functions
#' @importfrom ggplot2 theme
#' @import yourpackage
#' @noRd
mod_aminoacid_abundance_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

    output$abundance <- renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide |>
          group22::ander_1() +
          ggplot2::theme(legend.position = "none")
      }
    })
  })
}

## To be copied in the UI
# mod_aminoacid_abundance_ui("aminoacid_abundance_1")

## To be copied in the server
# mod_aminoacid_abundance_server("aminoacid_abundance_1")
