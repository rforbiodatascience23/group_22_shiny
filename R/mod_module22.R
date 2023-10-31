#' module22 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_module22_ui <- function(id){
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
#' module22 Server Functions
#' @importfrom ggplot2 theme
#' @import yourpackage
#' @noRd
mod_module22_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$abundance <- renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide |>
          group_22_package::ander_function() +
          ggplot2::theme(legend.position = "none")
      }
    })
  })
}

## To be copied in the UI
# mod_module22_ui("module22_1")

## To be copied in the server
# mod_module22_server("module22_1")
