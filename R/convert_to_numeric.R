#' Convert a character column to a numeric column
#'
#' @param df A data frame.
#' @param column_name The name of the column to convert.
#' @return A data frame with the specified column converted to numeric. Non-numeric values are converted to NA.
#' @examples
#' data(mtcars)
#' mtcars$mpg <- as.character(mtcars$mpg)
#' convert_to_numeric(mtcars, "mpg")
#' @export
convert_to_numeric <- function(df, column_name) {
  df[[column_name]] <- suppressWarnings(as.numeric(df[[column_name]]))
  return(df)
}
