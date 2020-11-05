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
    count =0
    i=0
    candles.each do |e|
        #puts candles[e].to_s
        #puts candles[i].to_s #3 2 1 3 
        #puts i #este llega hasta el 3 por que son 4 elementos
            if(candles[i].to_i >= candles[i+1].to_i)
                if max >= candles[i].to_i
                    max=max
                else
                    max=candles[i].to_i
                end
            else
                if max>=candles[i+1].to_i
                    max=max
                else
                    max=candles[i+1].to_i
                end
            end

        i=i+1
    end
    #puts max.to_s
    j=0
    counter=0
    candles.each do |e|
        if(candles[j].to_i==max)
            counter=counter+1
        end
        j=j+1
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