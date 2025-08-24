class CalculatorController < ApplicationController
  def square
    render({ :template => "calc_templates/square" })
  end

  def square_results
    @number = params.fetch("num").to_i

    @square_result = @number * @number

    render({ :template => "dice_templates/square_results" })
  end

end
