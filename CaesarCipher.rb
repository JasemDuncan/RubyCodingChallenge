require 'pry-byebug'
# 1 Ejemplo para depurar
# def yell_greeting(string)
#   name = string

#   binding.pry

#   name = name.upcase
#   greeting = "WASSAP, #{name}!"
#   puts greeting
# end

# yell_greeting("bob")

# Caesar_ipher EJEMPLO

def cesar (texto, salto)
  # puts "a".ord
  # puts "z".ord
  # puts "A".ord
  # puts "Z".ord
  # puts "z".ord-"a".ord
  # puts 'z'
  # puts "Z".ord-"A".ord
  
  p_letra=0;
  
  for i in 0...texto.length do
    # print texto[i] + " => posicion es: #{i}"
    # print " posicion dentro: #{texto[i].ord}"
    
    if texto[i].ord > 97 && texto[i].ord < 122
      if (texto[i].ord + salto)>122
        p_letra=(texto[i].ord + salto)-26
      else
        p_letra=texto[i].ord + salto
      end
    elsif texto[i].ord > 65 && texto[i].ord < 90
      if (texto[i].ord+salto)>90
        p_letra=(texto[i].ord+salto)-26
      else
        p_letra= texto[i].ord+salto
      end
    else
      binding.pry
      p_letra=texto[i]
    end
    
    print p_letra.chr
  
    
  end
end

cesar("What a string!",5)


# def caesar_cipher(text, shift)
#   for i in 0...text.length do
#     char_code = text[i].ord
    
#     (a, z) = case char_code
#              when 97..122 then [97, 122]   # a-z
#              when 65..90  then [65, 90]    # A-Z
#              else next
#     end

#     rotate = shift > 0 ? 26 : -26

#     char_code += shift
#     char_code -= rotate unless char_code.between?(a, z)

#     text[i] = char_code.chr
#   end
# end
# message = "What a string!"

# caesar_cipher(message, 5)
# puts message