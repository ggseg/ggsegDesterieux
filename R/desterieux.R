### 2d polygons ----

#' Desterieux cortical parcellations
#'
#' Polygon data for Desterieux cortical parcellations, also known as the
#' aparc 2009 parcellations of Freesurfer
#'
#' @docType data
#' @name desterieux
#' @usage data(desterieux)
#' @family ggseg_atlases
#' @keywords datasets
#'
#' @references Desterieux, Fischl, Dale,& Halgren (2010) Neuroimage. 53(1): 1–15. doi: 0.1016/j.neuroimage.2010.06.010
#' (\href{https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2937159/}{PubMed})
#'
#' @format A data.frame with 11341 observations and 11 variables
#' \describe{
#'   \item{long}{coordinates for the x-axis}
#'   \item{lat}{coordinates for the y-axis}
#'   \item{region}{name of region}
#'   \item{hemi}{dummy name of the hemisphere}
#'   \item{side}{which side to view (sagittal)}
#'   \item{label}{label name from Freesurfer}
#'   \item{atlas}{name of the atlas}
#' }
#' @examples
#' data(desterieux)
"desterieux"

### 3d meshes ----

#' Desterieux cortical parcellations
#'
#' MMesh data for Desterieux cortical parcellations, also known as the
#' aparc 2009 parcellations of Freesurfer
#'
#' @docType data
#' @name desterieux_3d
#' @usage data(desterieux_3d)
#' @family ggseg3d_atlases
#' @keywords datasets
#'
#' @references Desterieux, Fischl, Dale,& Halgren (2010) Neuroimage. 53(1): 1–15. doi: 0.1016/j.neuroimage.2010.06.010
#' (\href{https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2937159/}{PubMed})
#'
#' @format A tibble with 4 observations and a nested data.frame
#' \describe{
#'   \item{surf}{type of surface (`inflated` or `white`)}
#'   \item{hemi}{hemisphere (`left`` or `right`)}
#'   \item{data}{data.frame of necessary variables for plotting
#'   }
#'
#'   \item{atlas}{String. atlas name}
#'   \item{roi}{numbered region from surface}
#'   \item{annot}{concatenated region name}
#'   \item{label}{label `hemi_annot` of the region}
#'   \item{mesh}{list of meshes in two lists: vb and it}
#'   \item{area}{name of area in full}
#'   \item{colour}{HEX colour of region}
#' }
#' @examples
#' data(desterieux_3d)
"desterieux_3d"

