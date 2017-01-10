#' Lecture Notes in Computer Science (LNCS) proceedings format.
#'
#' Format for creating Lecture Notes in Computer Science (LNCS) proceedings articles. Adapted
#' from
#' \href{http://www.springer.com/comp/lncs/authors.html}{http://www.springer.com/comp/lncs/authors.html}.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "lncs_article", package = "rticles")
#' }
#'
#' @export
lncs_article <- function(..., keep_tex = TRUE) {

  template <- find_resource("lncs_article", "template.tex")

  base <- inherit_pdf_document(..., template = template, keep_tex = keep_tex)

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_knit$out.format  <- "sweave"

  base$knitr$opts_chunk$prompt     <- TRUE
  base$knitr$opts_chunk$comment    <- NA
  base$knitr$opts_chunk$highlight  <- FALSE

  base$knitr$opts_chunk$dev.args   <- list(pointsize = 11)
  base$knitr$opts_chunk$fig.width  <- 4.9 # 6.125" * 0.8, as in template
  base$knitr$opts_chunk$fig.height <- 3.675 # 4.9 * 3:4
  base$knitr$opts_chunk$fig.align  <- "center"
  base$knitr$knit_hooks$plot       <- knitr::hook_plot_tex

  base
}

