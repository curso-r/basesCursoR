#' Import a dataset
#'
#' @param base String with the dataset name you want to import.
#' See the [`bases_disponiveis()`] function.
#'
#' @return A dataset.
#' @export
#'
#' @seealso [bases_disponiveis()] for available datasets.
#'
#' @examples
#' pegar_base("imdb")
pegar_base <- function(base) {
  readRDS(
    system.file(paste0("extdata/", base, ".rds"), package = "basesCursoR")
  )
}

#' See available datasets in the package
#'
#' @return Characeter vector with dataset names.
#' @export
#'
#' @seealso [pegar_base()] to import a dataset.
#'
#' @examples
#' bases_disponiveis()
bases_disponiveis <- function() {
  sub(
    "\\..*$",
    "",
    list.files(system.file("extdata", package = "basesCursoR"))
  )
}
