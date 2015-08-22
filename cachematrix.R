## Inversing Matrix  and caching the results

## The  function creates a invertible matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) 
    i <<- solve
    getinverse <- function() 
    i
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


##  Retrieve the inverse from the cache else compute it. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse (i)
        i
}
