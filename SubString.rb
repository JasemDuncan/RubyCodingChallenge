# https://www.theodinproject.com/lessons/ruby-sub-strings
# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word,dictionary)
  result = Hash.new(0)
  # puts result
  # lowered_text = word.downcase

  dictionary.each do |palabra|
    matches=word.downcase.scan(palabra).length
    result[palabra]=matches if matches!=0
    # puts matches

  end
  
return  result
end

puts substrings("below",dictionary)
# puts "Jasema".scan("a").length