
## calculates the inverse of the matrix.

## 1> makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) 
{
    InversingMatrix <- NULL
    set <- function(y) 
    {
        x <<- y
        InversingMatrix <<- NULL
    }
    get <- function()
    {
      x
    }
    setinverse<- function(inverse) 
    {
        InversingMatrix <<-inverse
        getinverse <- function()
    }
    {
      InversingMatrix
    }
    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}



##The following function returns the inverse of the matrix. 
##it computes the inverse, sets the value in the cache via
## setinverse function.

## This function assumes that the matrix is always invertible.

cacheSolve <- function(x, ...) 
    {
        inv <- x$getinverse()
        if(!is.null(InversingMatrix))
            {
                message("getting cached data.")
                return(InversingMatrix)
            }
        else
            {
                data <- x$get()
                InversingMatrix <- solve(data)
                x$setinverse(InversingMatrix)
                return(InversingMatrix)
            }
    }
