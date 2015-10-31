parse_test_cases <- function(){
   return(3)
}

# main
main <- function()
{
   f <- file("stdin")
   open(f)
   line <- readLines(f, n=1)
   num_of_test_cases = strtoi(line)

   for( i in 1:num_of_test_cases )
   {
      print( parse_test_cases() )
   }
}

main()




