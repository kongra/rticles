
## About this fork

This is a **personal fork** of [rstudio/rticles](https://github.com/rstudio/rticles), intentionally frozen at the v0.2 base (2016). It exists solely to provide two custom article templates not present in the upstream package:

- **[LNCS](https://www.springer.com/gp/computer-science/lncs/conference-proceedings-guidelines)** — Springer Lecture Notes in Computer Science proceedings
- **[JACSM](https://www.degruyter.com/view/j/jacsm)** — Journal of Applied Computer Science Methods (De Gruyter)

The upstream has grown to 50+ templates with a significantly restructured codebase. Merging would be a large undertaking with no benefit for this fork's narrow purpose. If you need a template other than LNCS or JACSM, use the upstream package directly.

### Installation

Install this fork from GitHub:

```r
devtools::install_github("kongra/rticles")
```

For the upstream package with all other templates:

```r
install.packages("rticles")
```

### Overview

The package provides custom [R Markdown](http://rmarkdown.rstudio.com) LaTeX formats and templates, including the two custom additions and the following inherited from the v0.2 upstream base:

- [LNCS](https://www.springer.com/gp/computer-science/lncs/conference-proceedings-guidelines) proceedings *(custom)*
- [JACSM](https://www.degruyter.com/view/j/jacsm) articles *(custom)*
- [JSS](http://www.jstatsoft.org/) articles
- [R Journal](http://journal.r-project.org/) articles
- [CTeX](http://ctex.org) documents
- [ACM](http://www.acm.org/) articles
- [ACS](http://pubs.acs.org/) articles
- [AMS](https://www.ametsoc.org/) articles
- [Elsevier](https://www.elsevier.com) journal submissions
- [AEA](https://www.aeaweb.org/journals/policies/templates) journal submissions

Under the hood, LaTeX templates ensure documents conform to submission standards. Composition and formatting use lightweight [markdown](http://rmarkdown.rstudio.com/authoring_basics.html) syntax, and R code and its output can be seamlessly included using [knitr](http://yihui.name/knitr/).

### Usage from RStudio

1. Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).
2. Install this package: `devtools::install_github("kongra/rticles")`
3. Use the **New R Markdown** dialog to create an article from one of the templates.

### Usage outside of RStudio

1. Install [pandoc](http://johnmacfarlane.net/pandoc/).
2. Install the packages:

```r
install.packages("rmarkdown")
devtools::install_github("kongra/rticles")
```

3. Use `rmarkdown::draft` to create articles:

```r
rmarkdown::draft("MyArticle.Rmd", template = "lncs_article",  package = "rticles")
rmarkdown::draft("MyArticle.Rmd", template = "jacsm_article", package = "rticles")
```
