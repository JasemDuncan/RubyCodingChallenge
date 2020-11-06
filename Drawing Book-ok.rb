#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(n, p)
    #
    # Write your code here.
    #    
    left_right=p/2    
    right_left=(n/2) - (p/2)
        
    if left_right<right_left
        return left_right
    else
        return right_left
    end
    

    
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()
