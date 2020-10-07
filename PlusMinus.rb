#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
    array=[]
    i=0
    arr.each do |e|
        array[i]=arr[i]/(arr.length)
           puts array[i]
        i=i+1
    end
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr
