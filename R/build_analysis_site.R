#' Build Analysis Site
#'
#' `build_analysis_site()` is a wrapper for [pkgdown::build_site()] that adds an 'Analysis' menu
#'   containing rendered versions of all .Rmd files in `analysis/`
#'
#' When run, `build_analysis_site()`:
#' 1. Reads base [pkgdown] settings from `pkgdown/_base.yml`
#' 1. Writes base settings to `pkgdown/_pkgdown.yml`
#' 1. Creates a template using [pkgdown::template_navbar()] and inserts an `analysis` menu with
#'   links to html versions of each .Rmd file in `analysis/`
#' 1. Writes the template to `pkgdown/_pkgdown.yml`
#' 1. Runs [pkgdown::clean_site()] and [pkgdown::build_site()]
#' 1. Creates a `_site.yml` file based on the final `_pkgdown.yml` that clones the [pkgdown] navbar
#'   in a temporary build directory
#' 1. Copies the following from `analysis/` into the build directory: `*.Rmd`, `data/`, `assets/`
#' 1. Changes `html_notebook` to `html_document`
#' 1. Builds a site using [rmarkdown::render_site()] using a modified `html_document` settings to
#'   render files with the look and feel of `html_notebook`
#' 2. Moves the rendered files to `docs/`: `*.html`, `data/`, `assets/` (excluding `index.html`)
#'
#' `build_analysis_site()` will fail with an error if there are no files in `analysis/*.Rmd`.
#' @param pkg Path to package.
#' @param ... additional arguments passed to [pkgdown::build_site()]
#'
#' @examples
#' \dontrun{
#' build_analysis_site()
#' }
#' @importFrom pkgdown clean_site build_site template_navbar
#' @importFrom rmarkdown render_site
build_analysis_site <- function(pkg = ".", ...) {
  # fail if analysis/ directory does not exist or has no .Rmd files
  # copy pkgdown/_base.yml to pkgdown/_pkgdown.yml, overwrite
  # build navbar (function?)
  # write pkgdown/_pkgdown.yml
  # clean and build pkgdown site
  # create temporary build directory
  # create _site.yml from _pkgdown.yml - store _site.yml template in this file
  # write _site.yml to build directory
  # read *.Rmd, replace html_notebook in yaml header with html_document, write to build directory
  # copy data/, assets/ to build directory as-is
  # render site using rmarkdown to docs/ in build directory
  # move staged files to package docs/ directory, do not overwrite
}
