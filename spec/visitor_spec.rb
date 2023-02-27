require './lib/visitor'

RSpec.describe Visitor do
  it 'exists' do
    visitor1 = Visitor.new('Bruce', 54, '$10')

    expect(visitor1).to be_an_instance_of(Visitor)
    expect(visitor1.name).to eq('Bruce')
    expect(visitor1.height).to eq(54)
    expect(visitor1.spending_money).to eq('$10')
    expect(visitor1.rides).to eq([])
  end

  it 'can list an empty array of preferences' do
    visitor1 = Visitor.new('Bruce', 54, '$10')
    
    expect(visitor1.preferences).to eq([])
  end

  it 'adds preference' do
    visitor1 = Visitor.new('Bruce', 54, '$10')

    visitor1.add_preference(:gentle)
    visitor1.add_preference(:water)

    expect(visitor1.preferences).to eq([:gentle, :water])
  end

  it 'can check if visitor is tall enough' do
    visitor1 = Visitor.new('Bruce', 54, '$10')
    visitor2 = Visitor.new('Tucker', 36, '$5')
    visitor3 = Visitor.new('Penny', 64, '$15')

    expect(visitor1.tall_enough?).to eq(true)
    expect(visitor2.tall_enough?).to eq(false)
    expect(visitor3.tall_enough?).to eq(true)
  end
end