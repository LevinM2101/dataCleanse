#' Remove rows with missing values from a data frame
#'
#' @param df A data frame.
#' @return A data frame with rows containing missing values removed.
#' @examples
#' data(mtcars)
#' mtcars[1,1] <- NA
#' remove_missing(mtcars)
#' @export
remove_missing <- function(df) {
  df <- df[complete.cases(df), ]
  return(df)
}
