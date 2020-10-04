#!/bin/ruby

require 'json'
require 'stringio'

# Complete the palindromeIndex function below.
def palindromeIndex(s)
#   Split all the elements and put in a array
    t1=s.length
    h=0
    i=0
    j=0
    k=0
    l=0
    array=[]
    auxiliar=[]
    palindrome=0
    no_palindrome=0
    while h<t1 do
        array.push(s.byteslice(h))
        h=h+1
    end
#IsEvent or not
    if array.length%2==1 #Impar
        puts "impar"
        while i< (array.length/2) do
            if(array[i]==array[(array.length-1)- i])
                palindrome=1+palindrome
            else
                no_palindrome=100
            end 
            i=i+1
        end
        if palindrome==array.length/2            
            return -1        
        end
    else #par
        puts "par"  
        while j< (array.length/2) do
            if(array[j]==array[(array.length-1)- j])
                palindrome=1+palindrome
            else
                no_palindrome=100
            end 
            j=j+1
        end
        if palindrome==array.length/2
            return -1        
        end
    end
#Quitar izquierda
    auxiliar=array
    array=array.drop(1)
    palindrome=0
    if array.length%2==1 #Impar
        puts "impar"
        while k< (array.length/2) do
            if(array[k]==array[(array.length-1)- k])
                palindrome=1+palindrome
            else
                no_palindrome=100
            end 
            k=k+1
        end
        if palindrome==array.length/2            
            return 0        
        end
    else #par
        puts "par"  
        while l< (array.length/2) do
            if(array[l]==array[(array.length-1)- l])
                palindrome=1+palindrome
            else
                no_palindrome=100
            end 
            l=l+1
        end
        if palindrome==array.length/2
            return 0        
        end
    end
#Quitar derecha
    array=auxiliar.pop
    palindrome=0
    if array.length%2==1 #Impar
        puts "impar"
        while k< (array.length/2) do
            if(array[k]==array[(array.length-1)- k])
                palindrome=1+palindrome
            else
                no_palindrome=100
            end 
            k=k+1
        end
        if palindrome==array.length/2            
            return 3        
        end
    else #par
        puts "par"  
        while l< (array.length/2) do
            if(array[l]==array[(array.length-1)- l])
                palindrome=1+palindrome
            else
                no_palindrome=100
            end 
            l=l+1
        end
        if palindrome==array.length/2
            return 3        
        end
    end
    
    #puts 9%2 sobra 1
    #puts 9/2 rpta a 4
    

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