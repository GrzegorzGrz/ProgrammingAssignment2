## This is script for Week 3 assignment
## conisst of two functions makeCacheMatrix and cacheSolve
## detailed description inside script
##temp comments and left for purpose 



#temp matrix creation for testing purpose
##  x <- matrix(1:4, 2, 2) 

## Function to cache input matrix x
makeCacheMatrix <- function(x = matrix()) {
  x_org <<- as.matrix(x) 
  x_inv <<- solve(x)

}

#temp run for testing purpose
## makeCacheMatrix(x)

## Function to check if for a given matrix (identical) inverse matrix is stored in cache
# if yes get matrix from cache if not calculate it

cacheSolve <- function(x, ...) {
       
  if(exists("x_inv")){
  if(!is.null(x_inv) & identical(x, x_org)) {
    message("getting cached invesred matrix")
    return(x_inv)
  }}
 m <- solve(x)
 m
}

#temp run cache function for testing purpose
## cacheSolve(x)