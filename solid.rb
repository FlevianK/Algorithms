# Single responsibility principle
class AuthenticatesUser
  def authenticate(email, password)
    if matches?(email, password)
     do_some_authentication
    else
      raise NotAllowedError
    end
  end

  private
  def matches?(email, password)
    user = find_from_db(:user, email)
    user.encrypted_password == encrypt(password)
  end
end

# after

class AuthenticatesUser
  def authenticate(email, password)
    if MatchesPasswords.new(email, password).matches?
     do_some_authentication
    else
      raise NotAllowedError
    end
  end
end

class MatchesPasswords
  def initialize(email, password)
     @email = email
     @password = password
  end

  def matches?
     user = find_from_db(:user, @email)
    user.encrypted_password == encrypt(@password)
  end
end

# Open/closed principle
class Report
  def body
     generate_reporty_stuff
  end

  def print
     body.to_json
  end
end

# after
class Report
  def body
     generate_reporty_stuff
  end

  def print(formatter: JSONFormatter.new)
     formatter.format body
  end
end

# Liskov substitution principle
class Animal
  def walk
     do_some_walkin
  end
end

class Cat < Animal
  def run
    run_like_a_cat
  end
end

# after
class Animal
  def walk
     do_some_walkin
  end

  def run
    raise NotImplementedError
  end
end

class Cat < Animal
  def run
    run_like_a_cat
  end
end

# Interface segregation principle
class Car
  def open
  end

  def start_engine
  end

   def change_engine
   end
end

class Driver
  def drive
    @car.open
    @car.start_engine
  end
end

class Mechanic
  def do_stuff
    @car.change_engine
  end
end

# after
class Car
  def open
  end

  def start_engine
  end
end

class CarInternals
   def change_engine
   end
end

class Driver
  def drive
    @car.open
    @car.start_engine
  end
end

class Mechanic
  def do_stuff
    @car_internals.change_engine
  end
end

# Dependency inversion principle
class Report
  def body
     generate_reporty_stuff
  end

  def print
     JSONFormatter.new.format(body)
  end
end

class JSONFormatter
  def format(body)
     ...
  end
end

# after
class Report
  def body
     generate_reporty_stuff
  end

  def print(formatter: JSONFormatter.new)
     formatter.format body
  end
end