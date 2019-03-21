require 'dice'

describe Dice do

  it 'rolls a dice' do
    expect(subject).to respond_to :roll_dice
  end

  it 'rolls dice and returns random number' do
    dice1 = Dice.new(1, 100)
    dice2 = Dice.new(1, 100)
    expect(dice1.roll_dice).not_to eq dice2.roll_dice
  end

  it 'rolls multiple dice' do
    dice = Dice.new(2)
    dice.roll_dice
    expect(dice.dice_rolls.count).to eq 2
  end

  it 'defaults to one dice if no number entered' do
    subject.roll_dice
    expect(subject.dice_rolls.count).to eq Dice::ONE_DICE
  end

  it 'shows result of each dice roll' do
    dice = Dice.new(2, 1)
    dice.roll_dice
    expect(dice.score).to eq "1, 1 - Total Score: 2"
  end

  it 'can roll different sized dice' do
    dice = Dice.new(1, 1)
    dice.roll_dice
    expect(dice.dice_rolls).to eq [1]
  end

  it 'defaults to one 6 sided die if left blank' do
    dice = Dice.new
    expect(dice.dice_faces).to eq 6
  end

  it 'can roll different sized dice multiple times' do
    dice = Dice.new(2, 1)
    dice.roll_dice
    expect(dice.dice_rolls).to eq [1,1]
  end
end
