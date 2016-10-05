makeCacheMatrix <- function(x = matrix()) {
    ## This function inputs a user-defined matrix,
    ##computes its inverse by accessing the cacheSolve function
    ## It creates a list at the end with 
    matinv <- NULL  ##Initializing matinv: the inverse of the matrix
    set <- function(y) {
        x <<- y  ## Assinging the input arguement of x in the parent env
        matinv <<- NULL  ## Assigning null to matinv in the parent env
    }
    get <- function() x
    setinv <- function(solve) matinv <<- solve ## Defining setter for m
    getinv <- function() matinv ## 
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}