# Algoritmo de reversão para rotação à direita de um array
# girar para a direita K posições


# Função para inverter um array do índice 'start' ao 'end_idx'
def reverse_array(arr, start, end_idx)
    while start < end_idx
      arr[start], arr[end_idx] = arr[end_idx], arr[start]
      start += 1
      end_idx -= 1
    end
  end
  
  # Função para realizar uma rotação à direita em um array
  def right_rotate(arr, d)
    n = arr.length
    d %= n # Lidando com rotações maiores do que o tamanho do array
    reverse_array(arr, 0, n - 1)
    reverse_array(arr, 0, d - 1)
    reverse_array(arr, d, n - 1)
  end
  
  # Função para imprimir um array
  def print_array(arr)
    puts arr.join(' ')
  end
  
  # Driver code
  arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  # 1 - 10 => 10 - 1
  # 2 - 9 => 9 - 2
  # 3 -8 => 8 - 3
  # 4 - 7 => 7 - 4
  # 5 - 6 => 6 - 5 
  # 10 9 8 7 6 5 4 3 2 1 
  # 8 9 10 7 6 5 4 3 2 1
  # 8 9 10 1 2 3 4 5 6 7
  
  k = 3
  

  right_rotate(arr, k)
  print_array(arr)
  