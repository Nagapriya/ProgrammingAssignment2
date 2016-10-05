makeCacheMatrix <- function(x = matrix()) {
    ## This function inputs a user-defined matrix,
    ##computes its inverse by accessing the cacheSolve function
    ## It returns a list to the parent environment 
    matinv <- NULL  ##Initializing matinv: the inverse of the matrix
    set <- function(y) {
        x <<- y  ## Assinging the input arguement of x in the parent env
        matinv <<- NULL  ## Assigning null to matinv in the parent env
    }
    get <- function() x
    setinv <- function(solve) matinv <<- solve ## Defining setter for m
    getinv <- function() matinv ## 
    list(set = set,    ## gives the name 'set' to the set() function defined above
         get = get,    ## gives the name 'get' to the get() function defined above
         setinv = setinv, ## gives the name 'setinv' to the setinv() function defined above
         getinv = getinv) ## gives the name 'getinv' to the getinv() function defined above
}