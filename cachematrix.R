## Put comments here that give an overall description of what your
## functions do
## makCacheMatrix
##
## cacheSolve

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix( )) {
    cache <- NULL
    setMatrix <- function(y) {
        x <<- y
        cache <<- NULL
    }
    getMatrix <- function( ) {
        x
    }
    setInverse <- function(solve) {
        cache <<- solve
    }
    getInverse <- function( ) {
        cache
    }
    list(setMatrix = setMatrix,
         getMatrix = getMatrix,
         setInverse = setInverse,
         getInverse = getInverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverse( )
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    data <- x$getMatrix( )
    inverse <- solve(data)
    x$setInverse(inverse)
    inverse
}

# 1. fork
# 2. clone
# C:\Users\Administrator>git clone https://github.com/SEOTAEEYOUL/ProgrammingAssignment2-1
# Cloning into 'ProgrammingAssignment2-1'...
# remote: Counting objects: 22, done.
# remote: Total 22 (delta 0), reused 0 (delta 0), pack-reused 22
# Unpacking objects: 100% (22/22), done.
# Checking connectivity... done.
# 3. R Studio setwd( )
# > setwd("C:\\Users\\Administrator\\ProgrammingAssignment2-1")
# > dir()
# [1] "cachematrix.R" "README.md"    
# 4. edit source
# 5. test
# > source("cachematrix.R")
#
# > matrix(1:4, 2, 2)
#      [,1] [,2]
# [1,]    1    3
# [2,]    2    4
#
# > solve(matrix(1:4, 2, 2))
#      [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5
#
# > m <- makeCacheMatrix(matrix(1:4, 2, 2))
# > cacheSolve(m)
#      [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5
# 
# m$setMatrix(matrix(c(2, 2, 1, 4), 2, 2))
# m$getMatrix( )
# [,1] [,2]
# [1,]    2    1
# [2,]    2    4
# > m$getInverse( )
# NULL
# > cacheSolve(m)
# [,1]       [,2]
# [1,]  0.6666667 -0.1666667
# [2,] -0.3333333  0.3333333
# 6. commit
# 6.1 git add add cachematrix.R
# 6.2 git commit -m "cachematrix.R modified"
# [wt1-1 a9c92c1] cachematrix.R modified
# 1 file changed, 5 insertions(+)
# 6.3 git push origin wt1-1
# Counting objects: 6, done.
# Delta compression using up to 4 threads.
# Compressing objects: 100% (6/6), done.
# Writing objects: 100% (6/6), 1.50 KiB | 0 bytes/s, done.
# Total 6 (delta 1), reused 0 (delta 0)
# remote: Resolving deltas: 100% (1/1), done.
# To https://github.com/SEOTAEEYOUL/ProgrammingAssignment2-1
# * [new branch]      wt1-1 -> wt1-1

# ------------------------------
