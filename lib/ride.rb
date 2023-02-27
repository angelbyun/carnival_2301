class Ride
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :total_revenue

  def initialize(ride_info)
    @name = ride_info[:name]
    @min_height = ride_info[:min_height]
    @admission_fee = ride_info[:admission_fee]
    @excitement = ride_info[:excitement]
    @total_revenue = 0
  end
 
  def board_rider(visitor)
    if @preferences == [:excitement]
      board_rider
    end
  end

  def rider_log
    log = Hash.new
    @rides.each do |ride|
      log[ride] = []
      @visitors.each do |visitor|
        log[ride] << visitor if visitor.preferences == ride.excitement
      end
    end
    log
  end
end
