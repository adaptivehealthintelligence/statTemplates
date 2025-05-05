# README

This package contains common templates required by the biostatisticians at USyd and the Kids.

Currently contains the review process templates, minutes template and vignette.

## Development


The `.Rprofile` file will load `devtools`.

Use `devtools::load_all()` to source all the R scripts.

`devtools::document()` to run roxygen2 and update NAMESPACE.

Git tag (annotated):

```
# create annotated tag
git tag -a v1.4 -m "my version 1.4"
# push tags
git push origin --tags
# delete local tag
git tag -d v1.4
# delete remote tag
git push origin --delete <tagname>
```

## Licensing

Via `use_mit_license()` which creates the license and updates DESCRIPTION file.

## Installation

Clone repo or download as zip:

```
git clone https://github.com/adaptivehealthintelligence/statTemplates.git
```


After cloning/downloading the package from github, in R:

```
library(devtools)
document()
devtools::install(build_vignettes = TRUE, upgrade = "never")
```

or just install direct from github.

```
install.packages(c("devtools"))
devtools::install_github("adaptivehealthintelligence/statTemplates")
```

If you want to ensure that `statTemplates` is always loaded then include 

```
library(statTemplates)
```

in your user level `.Rprofile` file.

## Usage

See the vignettes for process guidance and review steps for analysis plans.

## Todo 

What things not fully clear on ?

1. State transition for status of products


