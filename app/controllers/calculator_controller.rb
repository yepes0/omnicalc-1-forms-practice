class DiceController < ApplicationController
  def render_homepage
    render({ :template => "calculator_templates/homepage" })
  end

  def calc_square
    @number_of_dice = params.fetch("dice").to_i

    @number_of_dice.times do
      dice = rand(1..@how_many_sides)
      @rolls.push(dice)
    end

    render({ :template => "dice_templates/process_roll" })
  end

end
