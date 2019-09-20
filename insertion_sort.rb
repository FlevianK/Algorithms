class InsertionSort
  def self.insertion_sort(array)
    n = array.length

    n.times do |index|
      while index > 0
        if array[index-1] > array[index]
          array[index], array[index-1] = array[index-1], array[index]
        else
          break
        end
        index -= 1
      end
    end
    
    array
  end
end

# Let's give this a spin?
puts InsertionSort.insertion_sort([4, 92, 1, 39, 19, 93, 49, 10].shuffle) # => [1, 4, 10, 19, 39, 49, 92, 93] 
