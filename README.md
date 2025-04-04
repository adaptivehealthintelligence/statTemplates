# README

This package contains common templates required by the biostatisticians at USyd and the Kids.

Currently contains the review process templates and vignette.

## Development

The `.Rprofile` file will load `devtools`.

Use `devtools::load_all()` to source all the R scripts.

`devtools::document()` to run roxygen2 and update NAMESPACE.

## Licensing

Via `use_mit_license()` which creates the license and updates DESCRIPTION file.

## Installation

After cloning the package from github:

```
library(devtools)
document()
devtools::install(build_vignettes = TRUE, upgrade = "never")
```

or just install direct from github.

```
install.packages(c("devtools"))
devtools::install_github("maj-biostat/statTemplates")
```

If you want to ensure that `statTemplates` is always loaded then include 

```
library(statTemplates)
```

in your `.Rprofile` file.

## Usage

See the vignettes for process guidance.

## Todo 

What things not fully clear on ?

1. State transition for status of products


