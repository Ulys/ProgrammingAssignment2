## Put comments here that give an overall description of what your
## functions do

## @function Create object which contain matrix and could memorize invert matrix

makeCacheMatrix <- function(x = matrix()) {
  
  solve_mat <- NULL;
  
  set <- function (y) {
    
    x <<- y;
    solve_mat <<- NULL;
  }
  
  get <- function () {  
    x;
  }
  
  setSolve <- function (solve) {
    solve_mat <<- solve
  }
  
  getSolve <<- function() {
    solve_mat;
  }
  
  list(
    set = set,
    get = get,
    setSolve = setSolve,
    getSolve = getSolve
  );
}


## @function return inverse matrix if it count previously if NOT it count it save and return

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  solve_mat <- x$getSolve();
  
  if(!is.null(solve_mat)) {
    
    message('getting cached data')
    return (solve_mat)
  }
  
  data <- x$get();
  
  solve_mat <- solve(data);
  
  x$setSolve(solve_mat);
  
  solve_mat
}
