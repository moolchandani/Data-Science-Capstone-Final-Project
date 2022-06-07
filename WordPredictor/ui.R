### Coursera Data Science Capstone : Final Project
### ui.R file for the Shiny app
### It builds required UI for Next Word Predictor application which accepts an n-gram and predicts the next word.

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
library(png)
addResourcePath(prefix = 'pics', directoryPath = './pictures')
shinyUI(navbarPage("Coursera Data Science Capstone: Final Project",
                   tabPanel("Next Word Predictor",
                            img(src = "pics/jhu_dss_header.jpg", height=100, width=600),
                            br(),
                            br(),
                            HTML("<strong>Author:Umesh Moolchandani</strong>"),
                            br(),
                            HTML("<strong>Date: 07 June 2022</strong>"),
                            br(),
                            br(),
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("This application takes your string and predict the next word to your string"),
                                    textInput("inputString", "Enter your word or partial phrase here",value = ""),
                                    helpText("Once you finished typing your word or phrase, please click on the below button NextWord to suggest next expected word for your word or phrase"),
                                    submitButton('Next Word'),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                mainPanel(
                                    strong("Input String:"),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(0,255,0,0.40); color: blue;}'), 
                                    br(),
                                    textOutput('text1'),
                                    br(),
                                    strong("Predicted String:"),
                                    verbatimTextOutput("prediction")
                                )
                            )
                            
                   ),
                   tabPanel("About",
                            mainPanel(
                                includeMarkdown("Overview.md"),
                                img(src = "pics/predict_app_screenshot.jpg",height=400,width=900)
                            )
                   ),
                   tabPanel("Instructions",
                            mainPanel(
                                includeMarkdown("Instructions.md")
                            )
                   )
                   
)
)