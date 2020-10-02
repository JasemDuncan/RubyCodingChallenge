# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    i=0
    j=0
    k=0
    dx=0
    dy=0
    arr.length.times do |i| 
        dx= arr[i][i].to_i + dx 
        i=i+1
    end
    j=arr.length - 1  
    arr.length.times do |k| 
        dy= arr[k][j] + dy
        k=k+1
        j=j-1
    end
    if (dx-dy)<0
        return (dx-dy)*-1
    else
        return dx-dy
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
