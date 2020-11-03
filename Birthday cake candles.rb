#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
    # Write your code here
    max=0
    count=0
    candles.each do |e=0|
        if (candles[e].to_i >=candles[e+1].to_i)
            if max>=candles[e].to_i
                max=max
            else
                max=candles[e].to_i
            end
        else
            if max>=candles[e+1].to_i
                max=max
            else
                max=candles[e+1].to_i
            end
        end
        e=e+1
    end
    counter=0
    candles.each do |e|
        if (candles[e].to_i==max)
            counter=counter +1
        end
    end
    return counter 
    
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

candles_count = gets.strip.to_i

candles = gets.rstrip.split.map(&:to_i)

result = birthdayCakeCandles candles

fptr.write result
fptr.write "\n"

fptr.close()
