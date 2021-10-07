jadro <- function(M,r,s){
  
  if (r == nrow(M)){
    return(M[r,s])
  }
  start <- M(M,r,s)
  dolu <- M[r+1,s]
  sikmo <- M[r+1,s+1]
  max_coko <- max(dolu,sikmo)+start
  return(max_coko)
}

cokorek <- function(M,r,s){
  L <- nrow(M)
  if (r==L){
    return(M[r,s])
  }
  else {
    C <- M[r,s]
    cdolu <- cokorek(M,r+1,s)
    csikmo <- cokorek(M,r+1,s+1)
  }
  
}