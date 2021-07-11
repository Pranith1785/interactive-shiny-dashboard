

header <- dashboardHeader(
                title = "Interactive charts"
        
              )

sidebar <- dashboardSidebar(
  
            selectInput(
                  inputId = "airline",
                  label = "Airline",
                  choices = airlines_list,
                  selected = "FL",
                  selectize = FALSE
            ),
            
            sidebarMenu(
              selectInput(
                inputId = "month",
                label = "Month:",
                choices = month_list,
                selected = 99,
                size = 13,
                selectize = FALSE
              ),
              actionLink(inputId = "remove",label = "Remove detail tab")
            )
  
        )

body <- dashboardBody(
  
    tabsetPanel(
        id = "tabs",
        tabPanel(
          title = "Main Dashboard",
          value = "page1",
          
            fluidRow(
                   valueBoxOutput("total_flights"),
                   valueBoxOutput("per_day"),
                   valueBoxOutput("percent_delayed")
            ),
            br(),
            fluidRow(
              column(width = 6,
                     d3Output("fights_count")
                     ),
              column(width = 6,
                     d3Output("top_airports")
                    )
              )
        )
      )
            
)


dashboardPage(
    
  header = header,
  sidebar = sidebar,
  body = body,
  title = "flights data"

)