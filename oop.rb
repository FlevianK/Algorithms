# Inheritance
class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def description
    name + " is " + age.to_s + " years old"
  end
end

class Child < Person
  def initialize(name, age, hobbies)
    super(name, age)
    @hobbies = hobbies
  end
end

class Father < Person
  def initialize(name, age, job_title)
    super(name, age)
    @job_title = job_title
  end
end


child = Child.new("lee", 35, "tennis")
father = Father.new("lee", 35, "tennis")

# Encapsulation
class Person
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end
end

lee = Person.new("Lee")
p lee.name

# Polymorphism
class Person
  def initialize(name)
    @name = name
  end
  
  def my_name
    @name
  end
end

class Child < Person
end

class Father < Person
  def my_name
    "My name is #{@name}."
  end
end

joe = Child.new("Joe")
jim = Father.new("Jim")

[joe, jim].each(&:my_name) # => Joe, My name is Jim

# duck typing

class Friend
  def name
    "Chris"
  end
end

class Child
  def name
    "John"
  end
end

class Father
  def greeting(person)
    "Hi #{person.name}"
  end
end

child = Child.new.name
father = Father.new.greeting(Friend.new)
friend = Friend.new.name
[child, friend, father]
