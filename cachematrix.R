## 1> makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

## calculates the inverse of the matrix.
makeCacheMatrix <- function(x = matrix()) 
{
    InveringMatrix <- NULL
    set <- function(y) 
    {
        x <<- y
        InveringMatrix <<- NULL
    }
    get <- function()
    {
      x
    }
    setinverse<- function(inverse) InveringMatrix <<-inverse
    getinverse <- function()
    {
      InveringMatrix
    }
    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}



##The following function returns the inverse of the matrix. 
##it computes the inverse, sets the value in the cache via
## setinverse function.

## This function assumes that the matrix is always invertible.

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(InveringMatrix)) {
        message("getting cached data.")
        return(InveringMatrix)
    }
    data <- x$get()
    InveringMatrix <- solve(data)
    x$setinverse(InveringMatrix)
    InveringMatrix
}
