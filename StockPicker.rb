# https://www.theodinproject.com/lessons/ruby-stock-picker
# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
def stock_picker(array)
    # 1 To buy we have to loop the array and find the minimun value
    minValue=array[0];
    minValuePosition=0;

    array.each_with_index do |elemento, indice|
        puts "El elemento #{elemento}=>> el indice #{indice}"
        if elemento<minValue
            minValue=elemento
            minValuePosition=indice
        end
    end
    puts "#{minValuePosition} MIN VALUE POSITION "
    puts minValue
    # puts "jaem"

    # for i in indice... array.length 
    #     puts array[i]
    # end
    # print minValue
end

stock_picker([17,3,6,9,15,8,6,1,10])
