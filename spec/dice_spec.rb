require 'dice'

describe Dice do
  it 'rolls dice and returns number' do
    expect(subject.roll).to eq subject.rolls
  end

  it 'rolls multiple dice' do
    dice = Dice.new(2).roll
    dice.roll
    expect(dice.rolls.count).to eq 2
  end

  it 'shows result of each dice roll' do
    
  end

end
