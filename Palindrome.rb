#!/bin/ruby

require 'json'
require 'stringio'

# Complete the palindromeIndex function below.
def palindromeIndex(s)
    a=[]
    a[]<< s
    puts a[0]


end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    s = gets.to_s.rstrip

    result = palindromeIndex s

    fptr.write result
    fptr.write "\n"
end

fptr.close()
