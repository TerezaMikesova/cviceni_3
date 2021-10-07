vratitMince <- function(M){
  mince <- c(50,20,10,5,2,1)
  zak =0
  while(M>0){
    nej <- (mince[1,] <= 40)
    nej_max <- max(nej)
    zak <- zak +1
    M <- M-nej
  }
  return(zak)
}
vratitMince(77)


vratitMince <- function(M){
  mince <- c(50,20,10,5,2,1)
  while(M>0){
    zbytek <- mod(M,)
  }
  return(zak)
}