#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(n, p)
    #
    # Write your code here.
    #code is missing

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()
