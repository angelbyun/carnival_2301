require './lib/visitor'
require './lib/ride'
require './lib/carnival'

RSpec.describe Ride do
  it 'exists' do
    carnival = Carnival.new
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

    expect(ride1).to be_an_instance_of(Ride)
    expect(ride1.name).to eq('Carousel')
    expect(ride1.min_height).to eq(24)
    expect(ride1.admission_fee).to eq(1)
    expect(ride1.excitement).to eq(:gentle)
  end

  it 'has a total revenue of 0' do
    carnival = Carnival.new
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

    expect(ride1.total_revenue).to eq(0)
  end

  it 'adds preferences to visitors and board riders' do
    carnival = Carnival.new
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    visitor1 = Visitor.new('Bruce', 54, '$10')
    visitor2 = Visitor.new('Tucker', 36, '$5')

    visitor1.add_preference(:gentle)
    visitor2.add_preference(:gentle)

    ride1.board_rider(visitor1)
    ride1.board_rider(visitor2)
  end

  it 'adds a log for visitors who rode ride' do
    carnival = Carnival.new
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    visitor1 = Visitor.new('Bruce', 54, '$10')
    visitor2 = Visitor.new('Tucker', 36, '$5')

    visitor1.add_preference(:gentle)
    visitor2.add_preference(:gentle)

    carnival.add_rides(ride1)

    carnival.add_visitors(visitor1)
    carnival.add_visitors(visitor2)

    expect(ride1.rider_log).to eq({ride1 => [visitor1, visitor2]})
  end
end