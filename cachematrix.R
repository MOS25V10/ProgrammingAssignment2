This function is incomplete. It was meant to create a vector, calculate the sum of the vector, and pull the sum. 

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


This function is incomplete. It was meant to pull the cached sum and return its inverse.

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
       

