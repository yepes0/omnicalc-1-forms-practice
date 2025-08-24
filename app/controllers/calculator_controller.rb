class CalculatorController < ApplicationController
  def square
    render({ :template => "calculator_templates/square" })
  end

  def square_results
    @number = params.fetch("number")
    @square = @number.to_f ** 2
    render({ :template => "calculator_templates/square_results" })
  end

  def square_root
    render({ :template => "calculator_templates/square_root" })
  end

  def square_root_results
    @number = params.fetch("user_number")
    @square_root = @number.to_f ** (0.5)
    render({ :template => "calculator_templates/square_root_results" })
  end

  def payment
    render({ :template => "calculator_templates/payment" })
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_f

    rate = @apr / 100 / 12
    nper = @years * 12

    numerator = rate * @principal
    denominator = 1 - (1 + rate) ** -nper

    @payment = numerator / denominator

    render({ :template => "calculator_templates/payment_results" })
  end

  def random
    render({ :template => "calculator_templates/random" })
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f

    render({ :template => "calculator_templates/random_results" })
  end
end
