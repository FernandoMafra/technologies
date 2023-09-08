# esta implementação é muito rápida e serve para grandes arrays
#porém é NECESSÁRIO FRISAR que o array deve estar ORDENADO para que funcione
#pois vai se dividindo o array ao meio em cada interaCão e para saber com qual metade ficar
#há o teste com a chave (menor ou maior que o meio) para saber qual metade escolher
# muito interessante

def binary_search(arr, chave)
    esquerda = 0
    direita = arr.length - 1
  
    while esquerda <= direita
      meio = (esquerda + direita) / 2
  
      if arr[meio] == chave
        return meio
      elsif arr[meio] < chave
        esquerda = meio + 1
      else
        direita = meio - 1
      end
    end
    
    return -1
  end
  
  # Exemplo de uso:
  array = [2, 4, 7, 10, 15, 18, 23, 30, 45, 50]
  chave = 45
  indice = binary_search(array, chave)
  
  if indice != -1
    puts "A chave #{chave} foi encontrada na posição #{indice}."
  else
    puts "A chave não pertence ao array."
  end
  