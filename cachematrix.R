## My functions should:
##1. Gets and sets matrix and gets and sets inverse matrix
##2. Gets inversed matrix and if its not null returns it
## if it is null - calculates and sets it

##  Sets inverse matrix to null, then for get and set functions for
## original matrix and inverse matrix. And finally creates list with
## all four functions 

makeCacheMatrix <- function(x = matrix()) {
  matr <- NULL
  set <- function(y) {
    x <<- y
    matr <<- NULL
  }
  get <- function() {x}
  setinverse <- function(inverse) {matr <<- inverse}
  getinverse <- function() {matr}
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}

## Gets inverse matrix from passed object, returns it if it is not null,
## if null gets original matrix, solves it and sets passed object
cacheSolve <- function(x, ...) {
  matr <- x$getinverse()
  if(!is.null(matr)) {
    message("getting inversed matrix cached data")
    return(matr)
  }
  data <- x$get()
  matr <- solve(data, ...)
  x$setinverse(matr)
  matr
}

