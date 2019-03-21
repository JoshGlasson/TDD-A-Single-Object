require 'dice'

describe Dice do

  it 'rolls a dice' do
    expect(subject).to respond_to :roll
  end

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
    expect(subject.rolls.count).to eq Dice::ONE_DICE
  end

  it 'shows result of each dice roll' do
    dice = Dice.new(2)
    dice.roll
    sum_of_rolls = 0
    dice.rolls.each { |dice| sum_of_rolls += dice }
    expect(dice.score).to eq "#{dice.rolls.join(", ")} - Total Score: #{sum_of_rolls}"
  end

  it 'can roll different sized dice' do
    dice = Dice.new(Dice::ONE_DICE, 1)
    dice.roll
    expect(dice.rolls).to eq [1]
  end

  it 'defaults to 6 sided die if left blank' do
    dice = Dice.new
    expect(dice.dice_faces).to eq 6
  end

end
