class CalculationController < ApplicationController

  def new
    @activities = Activity.all.includes(:variants).load
    @conversions = Conversion.all.load
  end

  def create

  end

end
