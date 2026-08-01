dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
  normalise = str.downcase
  result = dict.reduce(Hash.new(0)) do |matches, word|
    matches[word] = normalise.scan(word).length
    matches
  end
  p result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)