string = "What a string!"

def caesar_cipher(decoded, shift)
  encoded = []
  decoded.split("").each { |letter| 
    case letter
    when "a".."z"
      encoded.push((((letter.ord - 97 + shift) % 26) + 97).chr)
    when "A".."Z"
      encoded.push((((letter.ord - 65 + shift) % 26) + 65).chr)
    else
      encoded.push(letter)
    end
  }
  p encoded.join
end

caesar_cipher(string, 5)