class CalculationsController < ApplicationController
  def instructions
  end

  def square
    @sq = params[:number].to_i
    @square = @sq**2
  end

  def sqrt
    @number = params[:number].to_i
    @sqrt = Math.sqrt(@number)
  end

  def pmt
    @r = params[:interest_rate].to_i
    @int = @r/10000.0
    @num_pmt = params[:number_of_payments].to_i
    @principal = params[:principal_value].to_i
    @pmt = (@principal*@int) / (1-(1+@int)**(@num_pmt*-1))
  end

end
