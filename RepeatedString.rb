#!/bin/ruby

require 'json'
require 'stringio'

# Complete the repeatedString function below.
def repeatedString(s, n)
   i=0
   j=0
   total=n/s.length
   residuo=n%s.length
   a=[]
   a=s.split(//)
   cuentaATotal=0
   cuentaAResiduo=0
    while i<s.length do
        if('a'==a[i])
            cuentaATotal=1+cuentaATotal
        end        
        i=i+1
    end
    tequeda=s.split(//)
    while j<residuo do
        if('a'==tequeda[j])
            cuentaAResiduo=1+cuentaAResiduo
        end
        j=j+1
    end
    return cuentaATotal.to_i*total + cuentaAResiduo
    
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

n = gets.to_i

result = repeatedString s, n

fptr.write result
fptr.write "\n"

fptr.close()