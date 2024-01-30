devtools::install_cran("plotly") #  not yet on UW dataviz
devtools::install_cran("markdown") #  not yet on UW dataviz
devtools::install_cran("cowplot") #  not yet on UW dataviz
devtools::install_cran("ggdendro") #  not yet on UW dataviz
#devtools::install_cran("RSQLite") #  not yet on UW dataviz
devtools::install_github("byandell/foundr")
options(shiny.sanitize.errors = FALSE)

dirpath <- file.path(".")
traitData <- readRDS(file.path(dirpath, "traitData.rds"))
traitSignal <- readRDS(file.path(dirpath, "traitSignal.rds"))
traitStats <- readRDS(file.path(dirpath, "traitStats.rds"))
traitModule <- readRDS(file.path(dirpath, "traitModule.rds"))

#source("../appSetup.R")
datasets <- readRDS("datasets.rds")

customSettings <- list(
  help = "help.md",
  condition = "diet",
  entrykey = "Founder",
  dataset = datasets)

################################################################

title <- "Founder Diet Study"

ui <- foundr::ui(title)

server <- function(input, output, session) {
  
#  shiny::onStop(function() {RSQLite::dbDisconnect(db)})
  
  foundr::server(input, output, session,
                 traitData, traitSignal, traitStats,
                 customSettings, traitModule)
  
  # Allow reconnect with Shiny Server.
  session$allowReconnect(TRUE)
}

shiny::shinyApp(ui = ui, server = server)