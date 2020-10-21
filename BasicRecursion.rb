def sum(number)
    # Your code here
    total = 0
    if number > 1
      return total= number + sum(number -1).to_i 
    else
      return 1
    end
end
  
  puts sum(4)
  puts sum(10)