# rtraining 0.5.0

* moved `rmarkdown::render_site` header files to `pkgdown`

# rtraining 0.4.0

pkgdown integration

* `build-site` has been updated to (mostly) seamlessly build a site that integrates pkgdown as the base site and adds an "Analaysis" menu that contains all of the R Notebooks (`html_notebook`) or Documents (`html_document`) in `analysis/` (moved from `notebooks/`)

# rtraining 0.3.0

rdev migration

* `ci()`, `check_renv()`, `style_all()`, `lint_all()`, and `tools/setup-r` have been migrated to [rdev](https://jabenninghoff.github.io/rdev/), my "opinionated collection of R development tools"

* rtraining has been updated to import and load development tools through `rdev`

* updated README

# rtraining 0.2.1

* updated package description (Authors)

* GitHub Action updates

# rtraining 0.2.0

## New Content/Features

* `ci()`: run continuous integration tests locally: lint, R CMD check, and style (off by default).

* `check_renv()`: convenience function that runs `renv` `status()`, `clean()`, and optionally `update()` (on by default).

# rtraining 0.1.1

* minor maintenance updates

# rtraining 0.1.0

Initial GitHub release

## New Content/Features

* R Setup Log Notebook (r-setup-log.Rmd): My notes on my personal R setup

* minor updates to R Training Log

* `style_all()`: style all `.R` and `.Rmd` files in a project using `styler`

* `lint_all()`: lint all `.R` and `.Rmd` files in a project using `lintr`

* add GitHub Actions for continuous integration testing

# rtraining 0.0.1

Pre-release

* initial package setup, GitHub pages build

## New Content/Features

* R Training Log Notebook (r-training-log.Rmd): Notes on learning R and RStudio

* `tools/setup-r`: shell script to install development packages to site repository on macOS + Homebrew

* `build-site`: build a website from a collection of R Notebooks (`html_notebook`) in `notebooks/`
