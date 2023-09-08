def counting_sort(arr)
  max = arr.max
  count_array = Array.new(max + 1, 0)

  # Contagem de ocorrências usando for
  for num in arr
    count_array[num] += 1
  end

  sorted_array = []
puts count_array.join(',')
  # Reconstrução do array ordenado usando for
  for num in 0..max
    count = count_array[num]
    count.times { sorted_array << num }
  end

  return sorted_array
end

# Exemplo de uso:
array = [4, 2, 2, 8, 3, 3, 1]
sorted_array = counting_sort(array)
puts "Array ordenado: #{sorted_array.join(', ')}"
