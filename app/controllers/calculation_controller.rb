class CalculationController < ApplicationController

  def new
    @activities = Activity.all.includes(:variants).load
    @conversions = Conversion.all.load
    @calculation = Calculation.new
  end

  def create
    @activities = Activity.all.includes(:variants).load
    @conversions = Conversion.all.load
    @calculation = Calculation.new(params[:calculation])

    activity_variant_id = params[:calculation][:activity_variant_id]
    conversion_id = params[:calculation][:conversion_id]

    @activity_variant = ActivityVariant.find(activity_variant_id)
    @conversion = Conversion.find(conversion_id)

    @value = @conversion.convert(@activity_variant.co2)

    render :new
  end

end
