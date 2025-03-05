# frozen_string_literal: true

def caesar_cipher(string, shift)
  string.chars.map { |char| encrypt_char(char, shift) }.join
end

def encrypt_char(char, shift)
  return char unless char.match?(/[A-Za-z]/)

  base = char.ord < 91 ? 'A'.ord : 'a'.ord
  ((char.ord - base + shift) % 26 + base).chr
end

# Example usage:
# puts caesar_cipher("What a string!", 5)  # Output: "Bmfy f xywnsl!"

str = gets.chomp
shift = gets.to_i

puts caesar_cipher(str, shift)
