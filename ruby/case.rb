puts "Inform your month of birth: "
month = gets.chomp.to_i

case month
when 1..3
    puts 'you got birth at begining of the year'
when 4..6
    puts 'you got birth at midle of the year'
when 7..9
    puts 'you got birth at Second half of the year'
else 10..12
    puts 'you got brith at end of the year'
end

