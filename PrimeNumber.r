# sieve of e

seq <- rep("T",1000)  # prime numbers <= 1000

for (i in 2:sqrt(length(seq))){   # Only count sqrt of n
    if (seq[i] == 'T'){
       index <- i^2		 
       while(index <= length(seq)){
            seq[index] <- 'F'
            index <- index + i
       }
    }         		
 }

which(seq == 'T')  # display the prime numbers


