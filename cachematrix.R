## Put comments here that give an overall description of what your functions do
## The makeCacheMatrix function would accept a square matrix and would try to cache the inverse of that matrix.
## The cacheSolve function would accept an input in form of x where x is numeric and would return a matrix which is inverse of x.

## Write a short comment describing this function
##The makeCacheMatrix function would accept a matrix and would return a inverse. The solve function is used to get the inverse of the matrix.
makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrixinverse<- function(solve) m <<- solve
  getmatrixinverse <- function() m
  list(set = set, get = get,
       setmatrixinverse = setmatrixinverse,
       getmatrixinverse = getmatrixinverse)
}

## Write a short comment describing this function
##The cacheSolve function would accept a xwhich is numeric and would return the output in an matrix which is inverse of the x.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrixinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrixinverse(m)
  m
}
