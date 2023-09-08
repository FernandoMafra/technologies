# Solicita ao usuário para inserir o primeiro número
print "Digite o primeiro número: "
numero1 = gets.chomp.to_f

# Solicita ao usuário para inserir o segundo número
print "Digite o segundo número: "
numero2 = gets.chomp.to_f

# Calcula a soma dos dois números
soma = numero1 + numero2

# Imprime o resultado
puts "A soma de #{numero1} e #{numero2} é igual a #{soma}."
