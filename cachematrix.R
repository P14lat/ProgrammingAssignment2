## this function is used to produce a matrix object

makeCacheMatrix <- function(x = matrix()) {
        ## initialise 
        init_null <- NULL
        ## use anonymous function
        
        set <- function(y) 
                {
                x <<- y
                init_null <<- NULL
        }
        
        get <- function() x
        setInverse <- function(inversely) init_null <<- inversely
        getInverse <- function() init_null
        list(
             set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse
             )
}

## this function is used to process the matrix object from above
cacheSolve <- function(x, ...) {
        
        init_null <- x$getInverse()
        if (!is.null(init_null)) {
        message("cached data is displayed - what you see is cached data")
        return(init_null)
                
## returning the matrix wich is inverse | origin was 'x'
        }
        
        matrix_1 <- x$get()
        init_null <- solve(matrix_1, ...)
        x$setInverse(init_null)
        init_null
}
