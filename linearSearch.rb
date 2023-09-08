# vamos implementar a linear search para encontrar um elemento no array

def linear_search(array, key)
    for i in 0...array.length
      if array[i] == key
        return i  
      end
    end
    return false 
end


key =99
array = [10, 25, 5, 8, 3, 15, 20]
result = linear_search(array, key)
(result != false )? (puts "Key #{key} encontrada na posição index #{result}.") : (puts "Key #{key} não foi encontrada no array.")
tete = false
p tete.class
