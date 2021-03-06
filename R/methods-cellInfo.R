#' cellInfo
#'
#' Return cell line metadata from a object
#'
#' @examples
#' data(CCLEsmall)
#' cellInf <- cellInfo(CCLEsmall)
#'
#' @param object The \code{PharmacoSet} to retrieve cell info from
#'
#' @return a \code{data.frame} with the cell annotations
#'
#' @describeIn PharmacoSet
#'
#' @importFrom CoreGx cellInfo
#' @importFrom methods callNextMethod
#' @export
setMethod(cellInfo, "PharmacoSet", function(object){
  callNextMethod(object)
})


#' cellInfo<- Generic
#'
#' Generic for cellInfo replace method
#'
#' @examples
#' data(CCLEsmall)
#' cellInfo(CCLEsmall) <- cellInfo(CCLEsmall)
#'
#' @param object The \code{PharmacoSet} to replace cell info in
#' @param value A \code{data.frame} with the new cell annotations
#' @return Updated \code{PharmacoSet}
#'
#' @importFrom CoreGx cellInfo<-
#' @importFrom methods callNextMethod
#' @export
setReplaceMethod("cellInfo", signature = signature(object="PharmacoSet", value="data.frame"), function(object, value){
  callNextMethod(object, value=value)
})