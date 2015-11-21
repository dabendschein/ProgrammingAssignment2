## The functions on this page, used together, take a matrix input and return its inverse.

## This function returns a list of functions that are used in the second function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(matrix) m <<- matrix
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}


## This function takes a custom list function with a matrix input and returns the inverse of that matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getmatrix()
        
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
       
        m <- solve(data, ...)
        
        x$setmatrix(m)
        m
}
