class Carnival
  attr_reader :rides,
              :visitors

  def initialize
    @rides = []
    @visitors = []
  end

  def add_rides(ride)
    @rides << ride
  end

  def add_visitors(visitor)
    @visitors << visitor
  end

end
