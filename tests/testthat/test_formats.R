
context("Custom formats (kongra/rticles fork)")

test_format <- function(name) {
  test_that(paste(name, "format"), {
    skip_on_cran()

    dir <- tempfile()
    dir.create(dir)
    oldwd <- setwd(dir)
    on.exit(setwd(oldwd), add = TRUE)

    testdoc <- "testdoc.Rmd"
    rmarkdown::draft(testdoc,
                     system.file("rmarkdown", "templates", name,
                                 package = "rticles"),
                     create_dir = FALSE,
                     edit = FALSE)

    capture.output({
      output_file <- tempfile(fileext = ".pdf")
      rmarkdown::render(testdoc, output_file = output_file)
      expect_true(file.exists(output_file))
    })
  })
}

# Only test our custom format; all upstream formats are tested in upstream's
# own test suite.
test_format("jacsm")
