#Find the largest three distinct elements in an array
def find_3_largest(arr)
    arr.sort!.reverse!
    unique_largest = []
    count = 0
    arr.each do |element|
      if count < 3 && !unique_largest.include?(element)
        unique_largest << element
        count += 1
      end
    end
    unique_largest
  end
  
  # Driver code
  arr = [12, 45, 1, -1, 45, 54, 23, 5, 0, -10]
  result = find_3_largest(arr)
  puts "Os três maiores elementos são: #{result.join(', ')}"
  