class Basket  
  def players  
    puts "Seven"  
  end  
end

# Basket.new.players 
  # or

class Basket  
  attr_accessor :players
end 

basket = Basket.new
basket.players = "seven"
puts basket.players


# or
class Basket; end

basket = Basket.new
def basket.players  
  puts "seven"  
end

Basket.new.players
