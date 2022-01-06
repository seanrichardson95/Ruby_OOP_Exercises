=begin

Write a class called Square that inherits from Rectangle, and is used like this:
square = Square.new(5)
puts "area of square = #{square.area}"

=end

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(height)
    super(height, height)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"