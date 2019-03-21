class Dice
attr_reader :number_of_dice
attr_reader :dice_rolls
attr_reader :dice_faces
ONE_DICE = 1
SIX_SIDED = 6

  def initialize(number_of_dice = ONE_DICE, dice_faces = SIX_SIDED)
    @number_of_dice = number_of_dice
    @dice_faces = dice_faces
    @dice_rolls = []
  end

  def roll_dice
    number_of_dice.times do
      @dice_rolls << rand(1..dice_faces)
    end
    return dice_rolls
  end

  def score
    sum_of_rolls = dice_rolls.inject(0) { |sum, dice| sum + dice }
    return "#{dice_rolls.join(", ")} - Total Score: #{sum_of_rolls}"
  end

end

def new_roll(dice, dice_size)
  Dice.new(dice, dice_size)
end

#two_d20 = new_roll(2, 20)
#two_d20.roll_dice
#puts two_d20.score
