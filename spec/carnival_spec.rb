require './lib/visitor'
require './lib/ride'
require './lib/carnival'

RSpec.describe Carnival do
  it 'exists' do
    carnival = Carnival.new

    expect(carnival).to be_an_instance_of(Carnival)
    expect(carnival.rides).to eq([])
    expect(carnival.visitors).to eq([])
  end

  it 'can add rides and visitors' do
    carnival = Carnival.new
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    visitor1 = Visitor.new('Bruce', 54, '$10')
    visitor2 = Visitor.new('Tucker', 36, '$5')
    
    carnival.add_rides(ride1)

    carnival.add_visitors(visitor1)
    carnival.add_visitors(visitor2)

    expect(carnival.rides).to eq([ride1])
    expect(carnival.visitors).to eq([visitor1, visitor2])
  end
end