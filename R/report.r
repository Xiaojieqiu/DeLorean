#' The filename of the R markdown report.
#'
#' @param report.name The report name
#'
#' @export
report.file <- function(report.name) {
    system.file("inst", "Rmd", sprintf("%s.Rmd", report.name),
                package="DeLorean")
}


#' The filename of the R markdown stylesheet
#'
#' @export
#'
de.lorean.stylesheet <- function() {
    system.file("inst", "Rmd", "foghorn.css", package="DeLorean")
}


#' Knit a report, the file inst/Rmd/<report.name>.Rmd must exist in
#' the package directory.
#'
#' @param dl de.lorean object
#' @param report.name The name of the report. Used to locate the R
#'  markdown report file in the package.
#'
#' @export
#'
knit.report <- function(dl, report.name) {
    knit2html(report.file(report.name),
              envir=environment(),
              stylesheet=de.lorean.stylesheet())
}


