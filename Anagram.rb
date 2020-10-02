#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    d1=0
    d2=0

     d1= arr[0][0] +arr[1][1]+arr[2][2]
     d2= arr[0][2] +arr[1][1]+arr[2][0]

    if (d1-d2)<0
        return (d1-d2)*-1
    else
        return d1-d2
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
