class Person
  attr_reader :name, :height, :color, :language, :nationality
  def initialize(name, height, color, language, nationality)
    @name = name
    @height = height
    @color = color
    @language = language
    @nationality  = nationality
  end
  
  def add_langauge(new_langauge)
    @language << new_langauge
  end
end