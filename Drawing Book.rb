#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(n, p)
    #
    # Write your code here.
    #
    
    izquierda_derecha=p/2

    while (n >=1) do
        if p==n
            derecha_izquierda=n
        end
        n=n-1
    end
    derecha_izquierda=derecha_izquierda
    
    puts derecha_izquierda
    puts izquierda_derecha

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()