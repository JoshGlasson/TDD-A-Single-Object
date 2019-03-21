require 'dice'

describe Dice do
  it 'rolls dice and returns number' do
    expect(subject.roll).to eq subject.rolls
  end

  it 'rolls multiple dice' do
    dice = Dice.new(2)
    dice.roll
    expect(dice.rolls.count).to eq 2
  end

  it 'defaults to one dice if no number entered' do
    subject.roll
    expect(subject.rolls.count).to eq 1
  end

  it 'shows result of each dice roll' do
    dice = Dice.new(2)
    dice.roll
    sum = 0
    dice.rolls.each { |a| sum+=a }
    expect(dice.score).to eq "#{dice.rolls.join(", ")} - Total Score: #{sum}"
  end

end
