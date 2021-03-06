## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function to create matrx object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL}
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
  
}
## Write a short comment describing this function
## Function to compute inverse of matrix returned by makeCacheMatrix and if calculated already,
## retrieve from cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmatrix(m)
  m
}