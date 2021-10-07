a <- matrix(c(3,0,0,0,1,4,0,0,5,3,0,0,1,2,6,7),byrow= TRUE, ncol=4)
## rekurze
cokolada <- function(M,r,s){
  
  if (r == nrow(M)){
    return(M[r,s])
  }
  else {
    start <- M[r,s]
    dolu <- M[r+1,s]
    sikmo <- M[r+1,s+1]
    max_coko <- max(dolu,sikmo)+start
    #M[r+1,s] <- max(dolu,sikmo)+start
  }
  return(max_coko)
}




### opsany
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



#####################
#iterativnì
cokoIter <- function(m){
  s <- dim(m)
  k1 <- seq(from=s[1]-1,to=1,by=-1)
  for (r in k1){
    k2 <- seq(from=r,to=1,by=-1)
    for (s in k2){
      Cdolu <- m[r+1,s]+m[r,s]
      Csikmo <- m[r+1,s+1]+m[r,s]
      m[r,s] <- max(c(Cdolu,Csikmo))
    }
  }
  return(m[1,1])
}