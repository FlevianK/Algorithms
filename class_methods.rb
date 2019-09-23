class Basket  
  def self.find(id)  
    puts "finding basket with the id of #{id}"  
  end  
end

  # or

class Basket  
  class << self  
    def find(id)  
      puts "finding basket with the id of #{id}"  
    end  
  end  
end  

# or
class Basket; end  
def Basket.find(id)  
  puts "finding basket with the id of #{id}"  
end

basket = Basket.find('abc')