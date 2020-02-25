# Features of the NMC clean markdown Template
#' NMC Clean Markdown Template
#' Refer to https://github.com/holtzy/epuRate
#'
#' @param toc 
#' @param code_folding 
#' @param number_sections 
#'
#' @return
#' @export
#'
#' @examples
nmcCleanNB <- function(toc = TRUE, code_folding = "hide", number_sections=TRUE) {
  
  # get the locations of resource files located within the package
  css <- system.file("rmarkdown", "templates", "nmc_nb_clean_template" ,"resources", "style.css", package = "nmcMetResources")
  template <- system.file("rmarkdown", "templates", "nmc_nb_clean_template" ,"resources", "template_epurate.html", package = "nmcMetResources")
  
  # call the base html_notebook function
  rmarkdown::html_notebook( theme= "lumen",
                            template= template,
                            css= css,
                            toc= toc,
                            toc_float = TRUE,
                            toc_depth = 2,
                            number_sections= number_sections,
                            df_print = "paged",
                            code_folding = code_folding,
  )
}