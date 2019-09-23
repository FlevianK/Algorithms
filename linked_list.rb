class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next = next_node
  end
end

class LinkedList

  def initialize(value)
    @first = Node.new(value)
  end

  def add(value)
    current = @first
    while !current.next_node.nil?
      current = current.next_node
    end
    current.next_node = Node.new(value)
  end
end