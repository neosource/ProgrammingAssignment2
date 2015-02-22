## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# makeCacheMatrix is a function that creates a Matrix and stores the value of 
# the inverse of that matrix 
makeCacheMatrix <- function(x = matrix()) {
        cache <- NULL
        set <- function(y) {
                x <<- y
                cache <<- NULL
        }
        get <- function() x
        cacheInverse <- function() cache <<- solve(x)
        getInverse <- function() cache
        # return a list. 
        list(set = set, get = get, cacheInverse = cacheInverse, getInverse = getInverse)
}

## Write a short comment describing this function
# The following function calculates the inverse of a matrix created with makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cachedInverse <- x$getInverse()
        if(!is.null(cachedInverse)) {
                message("getting cached data")
        } else {
                x$cacheInverse()
                cachedInverse <-x$getInverse()
        }
        cachedInverse
}
