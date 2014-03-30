class CalculationController < ApplicationController
  layout 'calculator'

  def new
    @activities = Activity.all.includes(:variants).load
    @conversions = Conversion.all.load
    @calculation = Calculation.new
  end

  def create
    @activities = Activity.all.includes(:variants).load
    @conversions = Conversion.all.load

    @calculation = Calculation.new(params[:calculation])

    render :new
  end

end
