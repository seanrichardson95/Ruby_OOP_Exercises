# Consider the following class definition:

class Database
end

class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.new
    @flight_number = flight_number
  end
end

# There is nothing technically incorrect about this class, but the definition may lead to problems in the future. How can this class be fixed to be resistant to future problems?

