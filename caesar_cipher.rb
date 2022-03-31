def caesar_cipher(string, integer)

  phrase = []
  ascii = []
  final_letters = []
  a_to_z = ("A"..."Z").to_a + ("a"..."z").to_a
  a_to_z.push('z')
  a_to_z.push('Z')

  string.each_char do | char |
    phrase.push(char)
  end

  phrase.each do |char|
    if a_to_z.include?(char)
      ascii.push(char.ord)
      next
    else
    ascii.push(char)
    end
  end

  ascii.each do | ascii_code |
    if a_to_z.include?(ascii_code.chr)

      letter = ascii_code.to_i + integer
      if letter > 122
      letter = (letter - 122) + 96
      end
      if letter > 90 && letter != ('a'...'z')
        letter = (letter - 90) + 64
      end

      final_letters.push(letter.chr)
    else
      final_letters.push(ascii_code)
    end
  end

    final_letters.join()
end

puts "Hello, please enter a phrase to be ciphered"
phrase = gets.chomp
puts "Hello again, please enter a number"
number = gets.chomp.to_i

puts caesar_cipher(phrase, number)