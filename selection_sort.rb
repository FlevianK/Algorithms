class SelectionSort
  def self.selection_sort(array)
    n = array.length - 1

    n.times do |index|
      min_index = index
      for itemIndex in (index + 1)..n
        min_index = itemIndex if array[itemIndex] < array[min_index]
      end
      array[index], array[min_index] = array[min_index], array[index] if min_index != index
    end 

    array
  end
end

# Let's give this a spin?
puts SelectionSort.selection_sort([4, 92, 1, 39, 19, 93, 49, 10].shuffle) # => [1, 4, 10, 19, 39, 49, 92, 93] 
