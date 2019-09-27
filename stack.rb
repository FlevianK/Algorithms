class Stack

  def initialize
   @stack = []
  end

  def push(item)
   @stack.push item
  end

  def pop
   @stack.pop unless self.empty?
  end

  def peek
   @stack.last unless self.empty?
  end

  def empty?
    @stack.nil?
  end

 end