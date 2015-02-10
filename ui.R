library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Paired Inputs"),
  sidebarPanel(
    numericInput('x1', 'Numeric input, x1', 0),
    numericInput('y1', 'Numeric input, y1', 0),
    numericInput('x2', 'Numeric input, x2', 1),
    numericInput('y2', 'Numeric input, y2', 1),
    numericInput('x3', 'Numeric input, x3', 2),
    numericInput('y3', 'Numeric input, y3', 2),
    numericInput('x4', 'Numeric input, x4', 3),
    numericInput('y4', 'Numeric input, y4', 3),
    numericInput('x5', 'Numeric input, x5', 4),
    numericInput('y5', 'Numeric input, y5', 4),
    numericInput('new', 'Numeric input, New Input Data', 2.5),
    dateInput("date", "Date:")  ,
    submitButton('Submit')
  ),
  mainPanel(
    h3('Linear Regression and Prediction'),
    p('This App will allow you to input 5 pairs of data as training data and predict 
      the outcome value based on a new single data point that you put in. Basically, you
      could enter 10 numbers from 5 pairs of data, each by each on the left side, the
      pairs are presented as (x1,y1), (x2,y2), (x3,y3), (x4,y4), (x5,y5). Then you enter
      the new data x which you want to predict y from, into the space of "New Data".
      The App will show you the training data you put in as well as a linear regression
      based on the training data you put in. The predicted value will printed as below 
      as well as shown in the plot (as in red).'),
    h4('You entered training data'),
    tableOutput("train"),
    h4('You entered New data point'),
    verbatimTextOutput("new"),
    h4('The Predicted Value is'),
    verbatimTextOutput("p"),
    h4('Below shows the linear regression and prediction'),
    plotOutput('newHist'),
    h4('The Analysis was done on'),
    verbatimTextOutput("date")
  )
))