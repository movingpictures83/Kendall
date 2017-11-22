p_value <- 0.01;
libs <- c("Hmisc");
lapply(libs, require, character.only=T);

input <- function(inputfile) {
  pc <<- read.csv(inputfile, header = TRUE);
}


run <- function() {
  cn <<- colnames(pc);
  cn <<- cn[2:length(cn)];
  pc <<- pc[,-1];
  pc <<- apply(pc, 1, as.numeric);
  pc <<- t(pc);
  pc <<- cor(pc, method=c("kendall"));
  pc[is.na(pc)] <<- 0;
  
  for (i in 1:ncol(pc)) {
     for (j in 1:ncol(pc)) {
        if (pc[i, j] < p_value) {
          pc[i, j] <- 0
        }
     }
  }

}

output <- function(outputfile) {
   write.table(pc, file=outputfile, sep=",", append=FALSE, row.names=unlist(cn), col.names=unlist(cn), na="");
}


