#The function "makeCacheMatrix" will first find the inverse of the inputted matrix, 
  #and then cache it in the global directory for other functions to use.  

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL    #i is an object for inverse, listed as NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(solve) i <<- solve #calculates inverse of the matrix
  getinv <- function() i    #gets cached inverse from "setinv" function
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

#The function cacheSolve will search for a cached inverse for a data frame. 
  #If there is no cached inverse, it will calculate it. 
  #This function can save time in computing since it will eliminate any
    #unneccesary calculations

cacheSolve <- function(x, ...) {
  ##Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {                       #Searches for cached inverse
    message("getting inversed matrix") 
    return(i)         
  }
  data <- x$get()                         #calculates matrix inverse if not previously cached 
  i <- solve(data, ...)
  x$setinv(i)
  m
}
