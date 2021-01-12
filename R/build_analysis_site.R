#' Build Analysis Site
#'
#' \bold{\preformatted{NOT WORKING YET
#' }}
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
build_analysis_site <- function(pkg = ".", ...) {
  analysis_menu_item <- function(str_file) {
    title <- rmarkdown::yaml_front_matter(str_file)$title
    link <- as.character(fs::path_ext_set(fs::path_file(str_file), ".html"))
    list(text = title, href = link)
  }

  notebooks <- fs::dir_ls("analysis", glob = "*.Rmd")
  if (length(notebooks) == 0) {
    stop("No *.Rmd files in analysis directory")
  }

  # read base settings, write to pkgdown
  base <- yaml::read_yaml("pkgdown/_base.yml")
  fs::file_copy("pkgdown/_base.yml", "pkgdown/_pkgdown.yml", overwrite = TRUE)

  # create navbar template and insert analysis menu
  menu <- unname(purrr::map(notebooks, analysis_menu_item))
  pkg_yml <- pkgdown::template_navbar()
  pkg_yml$navbar$structure$left <- append(pkg_yml$navbar$structure$left, "analysis")
  pkg_yml$navbar$components <- append(
    pkg_yml$navbar$components,
    list(analysis = list(text = "Analysis", menu = menu)),
    length(pkg_yml$navbar$components) - 1
  )
  pkg_yml <- append(pkg_yml, base, 0)

  # write template
  yaml::write_yaml(pkg_yml, "pkgdown/_pkgdown.yml")

  # run clean_site() and build_site()
  pkgdown::clean_site()
  pkgdown::build_site()

  # create temporary build directory
  # create _site.yml from _pkgdown.yml - store _site.yml template in this file
  # write _site.yml to build directory
  # read *.Rmd, replace html_notebook in yaml header with html_document, write to build directory
  # copy data/, assets/, rendered/ to build directory as-is
  # render site using rmarkdown to docs/ in build directory
  # move staged files to package docs/ directory, do not overwrite - include all files (skip data?)
}
