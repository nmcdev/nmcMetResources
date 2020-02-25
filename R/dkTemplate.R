# Features of the NMC html markdown Template
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
nmcHtmlTemp <- function(toc = TRUE, code_folding = "hide", number_sections=TRUE) {
  
  # get the locations of resource files located within the package
  css <- system.file("rmarkdown", "templates", "nmc_html_template" ,"resources", "style.css", package = "nmcMetResources")
  template <- system.file("rmarkdown", "templates", "nmc_html_template" ,"resources", "template_nmc.html", package = "nmcMetResources")
  
  # call the base html_notebook function
  rmarkdown::html_document( theme= "lumen",
                            template= template,
                            css= css,
                            toc= toc,
                            toc_float = TRUE,
                            toc_depth = 3,
                            mathjax = "default",
                            number_sections= number_sections,
                            df_print = "paged",
                            code_folding = code_folding,
  )
}


# Features of the NMC notebook markdown Template
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
nmcNotebookTemp <- function(toc = TRUE, code_folding = "show", number_sections=TRUE) {
  
  # get the locations of resource files located within the package
  css <- system.file("rmarkdown", "templates", "nmc_notebook_template" ,"resources", "corp-styles.css", package = "nmcMetResources")
  
  # call the base html_notebook function
  rmarkdown::html_notebook( theme= "default",
                            css= css,
                            toc= toc,
                            toc_float = TRUE,
                            toc_depth = 3,
                            number_sections= number_sections,
                            code_folding = code_folding,
                            highlight = "pygments",
                            fig_width = 10,
                            fig_height = 8,
                            self_contained = TRUE,
  )
}
