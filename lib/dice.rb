

class Dice
attr_reader :number_of_dice
attr_reader :rolls
ONE_DICE = 1

  def initialize(number_of_dice = ONE_DICE)
    @number_of_dice = number_of_dice
    @rolls = []
  end

  def roll
    number_of_dice.times do
      @rolls << rand(1..6)
    end
    return rolls
  end

  def score
    sum_of_rolls = 0
    rolls.each { |dice| sum_of_rolls += dice }
    return "#{rolls.join(", ")} - Total Score: #{sum_of_rolls}"
  end

end
