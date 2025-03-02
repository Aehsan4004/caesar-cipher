def caesar_cipher(string, shift)
  encrypted_string = ""

  string.each_char do |char|
    if char.match?(/[A-Za-z]/)
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      new_char = ((char.ord - base + shift) % 26 + base).chr
      encrypted_string << new_char
    else
      encrypted_string << char
    end
  end

  puts encrypted_string
end

# Example usage:
# puts caesar_cipher("What a string!", 5)  # Output: "Bmfy f xywnsl!"

str = gets
shift = gets.to_i

caesar_cipher(str, shift)
