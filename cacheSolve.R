cacheSolve <- function(x, ...) {
    ## This function computes the inverse of the given matrix
     
    matinv <- x$getinv()
    if(!is.null(matinv)) { 
        ##If the previous call to the function 
        ##has the same cacheMatrix as input, 
        ##print "getting cached data"
        message("getting cached data")
        return(matinv)
    }
    data <- x$get()
    matinv <- solve(data, ...)
    x$setinv(matinv)
    matinv
}