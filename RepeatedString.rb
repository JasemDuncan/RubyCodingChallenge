#!/bin/ruby

require 'json'
require 'stringio'

# Complete the repeatedString function below.
def repeatedString(s, n)
    
    chain=''
    a=[]
    b=[]
    contador=0
    
    #n.times do    
     #  chain=s+chain
    #end
    
    if(s=='a')
        return n
    end
    
    chain=s.to_s*n
    
    b=chain.split(//)
    
    n.times do |i|
        if(b[i].to_s=='a')
            contador=1+contador
        end        
    end
    return contador
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

n = gets.to_i

result = repeatedString s, n

fptr.write result
fptr.write "\n"

fptr.close()