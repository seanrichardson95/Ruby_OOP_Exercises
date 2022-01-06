=begin
Using the following code, add a method named #identify that returns its calling object.

Expected output (yours may contain a different object id):
#<Cat:0x007ffcea0661b8 @name="Sophie">
=end

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def identify
    self
  end
  
  def to_s
    "I'm #{name}!"
  end
end

kitty = Cat.new('Sophie')
puts kitty