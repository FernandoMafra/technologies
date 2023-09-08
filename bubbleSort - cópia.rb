# essa implementação é muito lenta, serve para efeitos didáticos

def bubble_sort(arr)
    n = arr.length
    trocas = true
  
    while trocas
      trocas = false
      (n - 1).times do |i|
        if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i] # Troca os elementos
          trocas = true
        end
      end
=begin
      PARA PERCORRER O VETOR E TROCAR OS ELEMENTOS PODEMOS FAZER ISSO COM O "FOR"
      for i in 0..(n - 2)
        if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i] # Troca os elementos
          trocas = true
        end
      end
=end
    end
  end
  # Exemplo de uso:
  array = [64, 34, 25, 12, 22, -10, -20, 100, 11, 90]
  bubble_sort(array)
  
  puts "Array ordenado com o método bubble sort:"
  puts array.join(", ")
  