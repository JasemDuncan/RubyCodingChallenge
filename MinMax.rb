#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
    arr=arr.sort
    min_sum = 0
    max_sum = 0
    for i in (0...(arr.length - 1)) do
        min_sum += arr[i]
        max_sum += arr[i + 1]
    end    
    puts "" + min_sum.to_s + " " + max_sum.to_s
end

arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr


