require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word,dictionary)
  result = Hash.new(0)
  lowered_text = word.downcase

  dictionary.each do |palabra|
    matches=lowered_text.scan(palabra)
    print matches
  end
  

end

substrings("below",dictionary)