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
    
   #Second Solution
   # total_array=n/2
   # element_in_array=p/2
    
   # if element_in_array == total_array
   #     return 0
   # else
    #    if (total_array - element_in_array) < element_in_array
    #        return total_array - element_in_array 
    #    else
    #        return p/2
    #    end
    #end

    
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()
