#!/bin/ruby

#
# Complete the simpleArraySum function below.
#
def simpleArraySum(ar)
    i=0
    sum=0
    while i<ar.length do
        sum=ar[i]+sum
        i+=1
    end
    return sum
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()