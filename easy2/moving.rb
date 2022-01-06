# You need to modify the code so that this works:
# You are only allowed to write one new method to do this.
module Walkable
  def walk
    "#{name} #{gait} forward"
  end
end

class Noble
  include Walkable
  
  attr_reader :name, :title
  
  def initialize(name, title)
    @name = name
    @title = title
  end
  
  def walk
    title + " " + super
  end
  
  private

  def gait
    "struts"
  end
  
end

class Person
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
puts mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
puts kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
puts flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
p byron.walk