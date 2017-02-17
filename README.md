
### Installation

If you wish to install our custom development version from GitHub you can do this:

```r
devtools::install_github("kongra/rticles")
```


### Overview

The **rticles** package provides a suite of custom [R Markdown](http://rmarkdown.rstudio.com) LaTeX formats and templates for various formats, including:

- [JSS](http://www.jstatsoft.org/) articles

- [R Journal](http://journal.r-project.org/) articles

- [CTeX](http://ctex.org) documents

- [ACM](http://www.acm.org/) articles

- [ACS](http://pubs.acs.org/) articles

- [AMS](https://www.ametsoc.org/) articles

- [Elsevier](https://www.elsevier.com) journal submissions

- [AEA](https://www.aeaweb.org/journals/policies/templates) journal submissions

- [LNCS](https://www.springer.com/gp/computer-science/lncs) proceedings submissions

- [JACSM](https://acsm.spoleczna.pl) proceedings submissions

Under the hood, LaTeX templates are used to ensure that documents conform precisely to submission standards. At the same time, composition and formatting can be done using lightweight [markdown](http://rmarkdown.rstudio.com/authoring_basics.html) syntax, and R code and its output can be seamlessly included using [knitr](http://yihui.name/knitr/).

Using **rticles** requires the prerequisites described below. You can get most of these automatically by installing the latest release of RStudio (instructions for using **rticles** without RStudio are also provided).

### Using rticles from RStudio

To use **rticles** from RStudio:

1) Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).

2) Install the **rticles** package: 
    
    install.packages("rticles", type = "source")
    
3) Use the **New R Markdown** dialog to create an article from one of the templates:

 ![New R Markdown](http://rmarkdown.rstudio.com/images/new_r_markdown.png)
    
    
### Using rticles outside of RStudio

1) Install [pandoc](http://johnmacfarlane.net/pandoc/) using the [instructions for your platform](https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md).

2) Install the **rmarkdown** and **rticles** packages:

    
    install.packages("rmarkdown")
    devtools::install_github("kongra/rticles")
    
    
3) Use the `rmarkdown::draft` function to create articles:

    
    rmarkdown::draft("MyJSSArticle.Rmd", template = "jss_article", package = "rticles")
    rmarkdown::draft("MyRJournalArticle", template = "rjournal_article", package = "rticles")
    

