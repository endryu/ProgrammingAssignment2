## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m<<-NULL
    function()x
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix

cacheSolve <- function(x, ...) {
    dat<-x()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    m<<-solve(dat,...)
    m        
    ## Return a matrix that is the inverse of 'x'
}
