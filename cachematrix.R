## Put comments here that give an overall description of what your
## functions do

###creating two functions makeCacheMatrix and cachesolve which consits of set and get to take the values using solve function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
      set <- function(y){
            x <<- y
            inv <<- NULL
      }
      get <- function() {x}
      setInverse <- function(inverse) {inv <<- inverse}
      getInverse <- function() {inv}
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## the below function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
      if(!is.null(inv)){
            message("getting cached data")
            return(inv)
      }
      mat <- x$get()         ###to get the inverse of the matix
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
}
