class CalculationController < ApplicationController

  def new
    @activities = Activity.all.includes(:variants).load
    @conversions = Conversion.all
  end

  def create

  end

end
