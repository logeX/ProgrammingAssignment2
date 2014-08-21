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
