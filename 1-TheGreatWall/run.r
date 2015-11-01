library("plyr")

#parse_test_cases <- function(){
#   return(3)
#}

# main
main <- function()
{
   f <- file("stdin")
   open(f)
   T = strtoi( readLines(f, n=1) )

   for( x in 1:T )
   {
      # generate attack
      N = strtoi( readLines(f, n=1) )
      allattack <- data.frame()
      for( y in 1:N )
      {
        tribe = strtoi( strsplit( readLines(f, n=1) , " ", fixed=TRUE)[[1]] )
        d = tribe[1]; n = tribe[2]; w = tribe[3]; e = tribe[4]; s = tribe[5]; delta_d = tribe[6]; delta_p = tribe[7]; delta_s = tribe[8]; 
        for( z in 1:n )
        {
           attack <- c( d, w, e, s )
           d = d+delta_d; w = w+delta_p; e = e+delta_p; s = s+delta_s;
           allattack = rbind( allattack, attack )
        }
      }
      names(allattack) <- c("D", "W", "E", "S")
      allattack <- arrange(allattack, D)
      print(allattack)

      # simulate attack
   }
}

main()




