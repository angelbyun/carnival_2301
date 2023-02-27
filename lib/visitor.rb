class Visitor
  attr_reader :name,
              :height,
              :spending_money,
              :preferences
              :tall_enough

  def initialize(name, height, spending_money)
    @name = name
    @height = height
    @spending_money = spending_money
    @preferences = []
    @tall_enough = true
  end

  def add_preference(preference)
    @preferences << preference
  end

  def tall_enough?
    if @height >= 54
      @tall_enough
    else @tall_enough == false
    end
  end
end
