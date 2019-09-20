def radix_sort(list)
  passes = (list.max == 0) ? 1 : Math.log10(list.max).to_i + 1
  new_list = []
  passes.times do |i|
    buckets = make_buckets
    list.each do |n|
      digit = get_digit(n, i)
      buckets[digit] += [n]
    end
    new_list, buckets = buckets.flatten, make_buckets
  end
  new_list
end
def make_buckets
  Array.new(10,[])
end
def get_digit(n, i)
  n % (10 ** (i + 1)) / (10 ** i)
end

# Let's give this a spin?
puts radix_sort([4, 92, 1, 39, 19, 93, 49, 10].shuffle) # => [1, 4, 10, 19, 39, 49, 92, 93] 
