## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL    #i is an object for inverse
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(solve) i <<- solve #set inverse
  getinv <- function() i    #get inverse
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}



## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        ##Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting inversed matrix")
    return(i)         
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  m
}
