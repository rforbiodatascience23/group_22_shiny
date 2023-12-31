#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fluidPage(
      h1("App22"),
      tabsetPanel(
        tabPanel(title = "Central Dogma",
                 mod_DNAtoPeptides_ui("DNAtoPeptides_1")),
        tabPanel(title = "Aminoacid Abundance",
                 mod_aminoacid_abundance_ui("aminoacid_abundance_1"))
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "App22"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}

mod_module22_ui("module22_1")
