#' onError
#'
#' @param err error message in the try catch
#' @param functionName name of function the try catch is located
#' @param step name of the step in the function
#' @return
#' @export
#'
#' @examples
onError<-function(err,functionName,   step){
  message_traceback<-err$message;
  errormessage = paste(paste("at ",functionName," :: ",step,sep=""),message_traceback,sep='\n')
  stop(errormessage)
}
