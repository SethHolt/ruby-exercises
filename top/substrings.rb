dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(str, dict)
  normalise = str.downcase
  result = dict.each_with_object(Hash.new(0)) do |word, matches|
    matches[word] = normalise.scan(word).length
  end
  p result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
