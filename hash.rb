class Hash
  attr_accessor :hash
  
	def initialize(size: 20)
		@size = size
		@hash = Array.new(size)
	end

	def insert(key, value)
		index = hashing_function(key)
		@hash[index] ||= []
		if @hash[index].find { |array| array.first == key }
			return "Key exists."
		else
			@hash[index] << [key, value]
		end
	end

	def lookup(key)
    index = hashing_function(key)
    
		if @hash[index]
			result = @hash[index].find { |array| array.first == key }
		else
			nil
    end
    
		result
  end
  
	def delete(key)
		index = hashing_function(key)
		array = lookup(key)
		@hash[index].delete(array)
	end

	def hashing_function(key)
		key.chars.map(&:ord).reduce(&:*) % @size
  end
  
end