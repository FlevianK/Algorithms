class Queue
  def initialize
   @queue = []
  end

  def enqueue(item)
   @queue << item
  end

  def dequeue
   @queue.shift unless self.empty?
  end

  def peek
   @queue.first unless self.empty?
  end

  def length
   @queue.length
  end

  def empty?
   @queue.nil?
  end
 end
