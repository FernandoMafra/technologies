puts "Por favor entre com a frase:"
frase = gets.chomp

uppercase_count = frase.scan(/[A-Z]/).size
lowercase_count = frase.scan(/[a-z]/).size
number_count = frase.scan(/\d/).size
specials_count = frase.scan(/[^A-Za-z\d]/).size

puts "Letras maiúsculas: #{uppercase_count}"
puts "Letras minúsculas: #{lowercase_count}"
puts "Números: #{number_count}"
puts "Caracteres especiais: #{specials_count}"
