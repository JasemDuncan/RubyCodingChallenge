#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
    array=[]
    i=0
    positive=0
    negative =0
    zero=0
    arr.each do |e|
        if(arr[i]>0)
            positive=positive+1
        end
        if(arr[i]<0)
            negative=negative+1
        end
        if(arr[i]==0)
            zero=zero+1
        end        
        i=i+1
    end
    puts (((positive.to_f/(arr.length)).round(6)).to_s+"000000")[0...8]
    puts (((negative.to_f/(arr.length)).round(6)).to_s+"000000")[0...8]
    puts (((zero.to_f/(arr.length)).round(6)).to_s+"000000")[0...8]
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr
