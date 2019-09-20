class BubbleSort
  def self.bubble_sort(array)
    return array if array.size <= 1

    swap = true
    n = array.length - 1

    while swap
      swap = false
      n.times do |index|
        if array[index] > array[index+1]
          array[index], array[index+1] = array[index+1], array[index]
          swap = true
        end
      end
    end

    array
  end
end

# Let's give this a spin?
puts BubbleSort.bubble_sort([4, 92, 1, 39, 19, 93, 49, 10].shuffle) # => [1, 4, 10, 19, 39, 49, 92, 93] 
