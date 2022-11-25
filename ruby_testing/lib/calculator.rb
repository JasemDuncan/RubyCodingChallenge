class Calculator
    # def add(a,b)
    #     a+b
    # end

    def add(*mas_numeros)
        sum=0
        for i in 0...mas_numeros.length do
            sum+=mas_numeros[i]
        end        
        return sum
    end

    def multiply(*collection)
        multiplicacion=1
        for i in 0...collection.length do
            multiplicacion*=collection[i]
        end        
        return multiplicacion   
    end
end
