#!/usr/bin/ruby

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dict)
  dict.map(&:downcase).reduce(Hash.new(0)) do |substrings, candidate|
    count = word.downcase.scan(candidate).length
    substrings[candidate] += count if count > 0
    substrings
  end
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
