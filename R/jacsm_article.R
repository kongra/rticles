#' Journal of Applied Computer Science Methods (JACSM) article format.
#'
#' Format for creating JACSM articles. Based on
#' \href{https://www.degruyter.com/view/j/jacsm}{https://www.degruyter.com/view/j/jacsm}.
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
#' draft("MyArticle.Rmd", template = "jacsm_article", package = "rticles")
#' }
#'
#' @export
jacsm_article <- function(...,
                         keep_tex        = TRUE,
                         chunk_highlight = FALSE,
                         chunk_prompt    = FALSE,
                         chunk_comment   = NA) {

  template <- find_resource("jacsm_article", "template.tex")

  base <- inherit_pdf_document(..., template = template, keep_tex = keep_tex)

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_knit$out.format  <- "sweave"

  base$knitr$opts_chunk$prompt     <- chunk_prompt
  base$knitr$opts_chunk$comment    <- chunk_comment
  base$knitr$opts_chunk$highlight  <- chunk_highlight

  base$knitr$opts_chunk$dev.args   <- list(pointsize = 11)
  base$knitr$opts_chunk$fig.width  <- 4.9 # 6.125" * 0.8, as in template
  base$knitr$opts_chunk$fig.height <- 3.675 # 4.9 * 3:4
  base$knitr$opts_chunk$fig.align  <- "center"
  base$knitr$knit_hooks$plot       <- knitr::hook_plot_tex

  base
}

