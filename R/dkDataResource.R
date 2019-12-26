#' dkDataResource
#' A data package for dkDataResource.
#' @docType package
#' @aliases dkDataResource-package
#' @title Meteorological package resources.
#' @name dkDataResource
#' @description  Collecting and transforming meteorological data resources, such as map data, station information, topography data and so on.
#' @details Use \code{data(package='dkDataResource')$results[, 3]} tosee a list of availabledata sets in this data package
#'     and/or DataPackageR::load_all
#' _datasets() to load them.
#' @seealso
#' \link{NWSInfo}
NULL



#' Detailed description of the data
#' @name NWSInfo
#' @docType data
#' @title National weather station information.
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{province}{province name}
#' \item{ID}{station ID}
#' \item{name}{station name}
#' \item{grade}{station grade level}
#' \item{lat}{latitude}
#' \item{lon}{longitude}
#' \item{alt}{altitude}
#' \item{pressureAlt}{pressure altitude}
#' }
#' @source The data comes from the information table of national weather stations (2016).
#' @seealso
#' \link{dkDataResource}
NULL



