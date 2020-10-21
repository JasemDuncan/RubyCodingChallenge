#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
    n.times do |x|
        hash=''
        space=''
        (x+1).times {hash+='#'}
        (n-(x+1)).times {space+=' '}
        puts "#{space<<hash}"
    end

end

n = gets.to_i

staircase n
