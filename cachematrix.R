
## Functions to calculates the inverse of the matrix.

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) 
{
    ## Initialize the inverse property
    InversingMatrix <- NULL
    
    ## Setting the matrix
    set <- function(y) 
    {
        x <<- y
        InversingMatrix <<- NULL
    }

    ## Method the get the matrix
    get <- function()
    {
	## Returning the matrix
           x
    }
    
    ## Method to set the inverse of the matrix
    setinverse<- function(inverse) 
    {
        InversingMatrix <<-inverse
        
    }    
    
    ## Method to get the inverse of the matrix
    getinverse <- function()
    
    {
      InversingMatrix
    }
    
    ## Return a list of the methods
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


##The following function returns the inverse of the matrix returned by "makeCacheMatrix". 
## If the inverse has already been calculated (and the matrix has not
## changed)
##If not, It computes the inverse, sets the value in the cache via
## setinverse function.

## This function assumes that the matrix is always invertible.

cacheSolve <- function(x, ...) 
    {
    
    ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()


    ## Just return the inverse if its already set
        if(!is.null(InversingMatrix))
            {
                message("getting cached data.")
                return(InversingMatrix)
            }
        
    
        else
            {
            ## Get the matrix from our object
                data <- x$get()
                
            ## Calculate the inverse using matrix multiplication
                InversingMatrix <- solve(data)
           
            ## Set the inverse to the object
                x$setinverse(InversingMatrix)
           
            ## Return the matrix
                return(InversingMatrix)
            }
    }
