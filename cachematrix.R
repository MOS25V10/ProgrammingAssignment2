## Put comments here that give an overall description of what your
## functions do

NewVector <- function(x = numeric()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
get <- function() x
setsum <- function(sum) s <<- sum
getsum <- function() s
list(set = set, get = get,
        setsum = setsum,
        getsum = getsum)
}


## Write a short comment describing this function

cachesum <- function(x) {
        s <- x$getsum()
        if(!is.null(s)) {
                message("pulling cached data")
                return(s)
        }
        data <- x$get()
        s <- sum(data)
        x$setsum(s)
        s
}
        ## Return a matrix that is the inverse of 'x'
}
