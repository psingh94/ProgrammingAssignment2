## 2 functions that cache the inverse of a matrix


## makeCacheMatrix:creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
    x<<-y
    m<<-NULL
  }
 
  get <- function() {
        x
  }
  
 ## Method to set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
 ## Method to get the inverse of the matrix
  getInverse <- function() {
        m
  }
 
 ## Return a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## cacheSolve: computes the inverse of the matrix got by makeCacheMatrix above. 

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if( !is.null(m) ) {
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        m <- solve(data) %*% data
        ## Set the inverse to the object
        x$setInverse(m)
        m      
}
Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help
 You signed in with another tab or window. Reload to refresh your session.
