def quick_sort(array)
  return array if array.length <= 1
  pivot = array.delete_at(rand(array.length))

  left = Array.new
  right = Array.new

  array.each do |x|
    if x <= pivot
      left << x
    else
      right << x
    end
  end

  return *quick_sort(left), pivot ,*quick_sort(right)

end

# Let's give this a spin?
puts quick_sort([4, 92, 1, 39, 19, 93, 49, 10].shuffle) # => [1, 4, 10, 19, 39, 49, 92, 93] 
