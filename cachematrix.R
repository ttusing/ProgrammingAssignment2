

## Give a list of functions to:
## 1. set the values of the matrix,
## 2. get the values of the matrix,
## 3. set the inverse of the matrix,
## 4. get the inverse of the matrix,

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
            x <<- y
            m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
    
    
    
}


## Takes above function as input. Returns the cached inverse "m" if
## it exists, otherwise computes and returns the inverse

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m
}
