# plumber.R

library(ggplot2)
library(gapminder)

# Plumber allows you to create APIs by merely decorating your existing R code 
# with special annotations. The example below shows a file named plumber.R 
# (the conventional name for Plumber APIs) which defines an API.

# Look a the functions
# roxygen like annotations: https://cran.r-project.org/web/packages/roxygen2/vignettes/roxygen2.html

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
    phrases <-  c("that guinea pig souls are the same as ours, they are just in tiny bodies.",
                  "that timesheets were due yesterday and today.",
                  "that Matt's birthday was last Saturday and we did not sing him happy birthday, should we do it now?",
                  "that tomorrow we only work half day!",
                  "that you are the best! Slay!"
                )
    baseline <- "No message provided, just a reminder %s"
    list(msg = ifelse(
                    nchar(msg) == 0,
                    sprintf(baseline, sample(phrases, 1)),
                    msg)
                    )
}

#* Plot a graph
#* @serializer png
#* @get /plot
function() {
  basic <- ggplot( mtcars , aes(x=mpg, y=wt)) + 
    geom_point()
  print(basic)
}

#* Filter a data.frame
#* @param country Name of country by which the function filters
#* @get /gapminder
function(country = "") {
    if (nchar(country) == 0) {
        gapminder
    } else {
        gapminder[gapminder$country == country, ]
    }
}
