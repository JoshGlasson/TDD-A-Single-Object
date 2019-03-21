class Dice
attr_reader :number_of_dice
attr_reader :rolls
attr_reader :dice_faces
ONE_DICE = 1
SIX_SIDED = 6

  def initialize(number_of_dice = ONE_DICE, dice_faces = SIX_SIDED)
    @number_of_dice = number_of_dice
    @dice_faces = dice_faces
    @rolls = []
  end

  def roll
    number_of_dice.times do
      @rolls << rand(1..dice_faces)
    end
    return rolls
  end

  def score
    sum_of_rolls = 0
    rolls.each { |dice| sum_of_rolls += dice }
    return "#{rolls.join(", ")} - Total Score: #{sum_of_rolls}"
  end

end
