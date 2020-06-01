## These functions calculate the inverse of a matrix 

## This function create a matrix which can store its inverse 

makeCacheMatrix <- function(x = matrix()) { 
  r <- NULL 
  set <- function(y){ 
    x <<- y 
    r <<- NULL 
  } 
  get <- function() x 
  setinverse <- function(inverse) r <<- inverse
  getinverse <- function() r 
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## This function computes the inverse of the matrix returned by 
## the function makeCacheMatrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x' 
  r <- x$getinverse() 
  if (!is.null(r)) { 
    message("getting cached data") 
    return(i) 
  }
  data <- x$get() 
  r <- solve(data, ...) 
  x$setinverse(r) 
  r
} 


## Testing the functions 

A <- matrix(c(1, 2, 3, 4), 2, 2) 

B <- makeCacheMatrix(A) 
cacheSolve(B) 


