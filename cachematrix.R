## Using example of makeVector code, this version uses a matrix
## This is for the R Programming Coursera Assignment #2

## creates function to set and get the value of the matrix and its inverse
## pairs with the cacheSolve function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
            x <<- y
            m <<- NULL
  }
        get <- function() x
            setinverse <- function(inverse) m <<- inverse
            getinverse <- function() m
        list(set = set,
            get = get,
            setinverse = setinverse,
            getinverse = getinverse)

}


## computes the inverse of the matrix created by the makeCacheMatrix function

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if (!is.null(m)) {
          message("getting cached data")
          return(m)
      }
      data <- x$get()
          m <- solve(data, ...)
          x$setinverse(m)
          m
}

