puts "Por favor entre com a frase:"
frase = gets.chomp.downcase

if frase.empty?
  frase = "the quick brown fox jumps over the dog"
end

alfabeto = ('a'..'z').to_a

frase.chars.each do |letra|
  alfabeto.delete(letra)
end

if alfabeto.empty?
  puts "A frase: #{frase} é um PANGRAM"
else
  puts "A frase: #{frase} NÃO é um PANGRAM"
end
