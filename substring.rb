def substrings(string, dictionary)
  string_array = string.downcase.split(' ')
  string_array.reduce(Hash.new(0)) do |hash, word|
    dictionary.map do |substring|
      if word.include?(substring.downcase)
        hash[substring] += 1 
      end     
    end
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)