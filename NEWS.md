# rtraining 0.8.10

* Updated Advanced R Workbook (Functional programming): add solutions for Chapter 10, 11

# rtraining 0.8.9

* Updated Advanced R Workbook (Functional programming): add solutions for Chapter 9

# rtraining 0.8.8

* Updated Advanced R Workbook (Foundations): add AR Solutions for Chapter 4-8

* Added Advanced R Workbook (Functional programming): Workbook for completing quizzes and exercises from the "Functional programming" chapters of [Advanced R](https://adv-r.hadley.nz/index.html), second edition, with comparisons to solutions from [Advanced R Solutions](https://advanced-r-solutions.rbind.io)

# rtraining 0.8.7

* Updated Advanced R Workbook (Foundations): add AR Solutions for Chapter 3

# rtraining 0.8.6

* Updated Advanced R Workbook (Foundations): add AR Solutions for Chapter 2, add workaround for plot rendering issue

* Update site to Bootstrap 5

# rtraining 0.8.5

* Renamed "Advanced R Workbook" to "Advanced R Workbook (Foundations)"; future notebooks will be added for each major section

* Updated Advanced R Workbook (Foundations): completed Chapter 6-8, added Solutions section for comparing solutions against [Advanced R Solutions](https://advanced-r-solutions.rbind.io/index.html)

# rtraining 0.8.4

* Updated Advanced R Workbook: completed Chapter 4, 5

# rtraining 0.8.3

* Updated Advanced R Workbook: completed Chapter 3

# rtraining 0.8.2

* Update links

# rtraining 0.8.1

* Add demo from Wikipedia article on [R](https://en.wikipedia.org/wiki/R_(programming_language))

* Updated Advanced R Workbook: added Chapter 3, 3.2.5 Exercises

* Replace development lintr with CRAN release 3.0.0

# rtraining 0.8.0

* Added Advanced R Workbook: Workbook for completing quizzes and exercises from [Advanced R](https://adv-r.hadley.nz/index.html), second edition.

* maintenance updates, update links

# rtraining 0.7.17

* maintenance release

# rtraining 0.7.16

* maintenance release

# rtraining 0.7.15

* maintenance release, fix links

# rtraining 0.7.14

* maintenance release

# rtraining 0.7.13

* maintenance release

# rtraining 0.7.12

* maintenance release, minor updates to rtraining log

# rtraining 0.7.11

* maintenance release

# rtraining 0.7.10

* maintenance release, fix broken links

# rtraining 0.7.9

* Important update from renv 0.15.0 to [0.15.1](https://rstudio.github.io/renv/news/index.html#renv-0151)

# rtraining 0.7.8

* Updated with new analysis package updates

# rtraining 0.7.7

* maintenance release

# rtraining 0.7.6

* Add new `viridis_quo()` styling to rtraining log, maintenance updates

# rtraining 0.7.5

* maintenance release

# rtraining 0.7.4

* maintenance release, update README and GitHub Actions

# rtraining 0.7.3

* Add FaultTree.widget Test notebook for demonstrating `ftree2widget()` issue

# rtraining 0.7.2

* maintenance release

# rtraining 0.7.1

* maintenance release, updated for R 4.1.0

# rtraining 0.7.0

* `build_analysis_site()` migrated to [rdev](https://jabenninghoff.github.io/rdev/)

# rtraining 0.6.0

## New Features

* major update: `build-site` has been replaced with an R function, `build_analysis_site()`, which retains all of the functionality of the old shell script. It is still considered Experimental, due to lack of test coverage and some features that are not implemented, but should work for projects with limited pkgdown customization. The update also includes a function to convert notebooks to `html_document`, `to_document()`.

* `build_analysis_site()` will be migrated to [rdev](https://jabenninghoff.github.io/rdev/) in a future release

## New Content

* R Setup Log: added notes on the package layout I use for "analysis" packages (will be converted to an rdev vignette in a future release)

* R Setup Log: added notes on my R Workflow

* R Training Log: updated with notes on my current book, [R Packages](https://r-pkgs.org)

# rtraining 0.5.1

* R Training Log content updates

# rtraining 0.5.0

* moved `rmarkdown::render_site` header files to `pkgdown` - `analysis` now contains only R Notebooks!

# rtraining 0.4.0

pkgdown integration

* `build-site` has been updated to (mostly) seamlessly build a site that integrates pkgdown as the base site and adds an "Analysis" menu that contains all of the R Notebooks (`html_notebook`) or Documents (`html_document`) in `analysis/` (moved from `notebooks/`)

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
