class UsagesController < ApplicationController

  def index
    @usages = Usage.all.includes(:activity, :activity_variant).load
    respond_with @usages
  end

  def new
    @usage = Usage.new
    @activities = Activity.all.load
    @activity_variants = ActivityVariant.all.load

    respond_with @usage
  end

  def create
    @usage = Usage.create permitted_params
    respond_with @usage
  end

  protected

  def permitted_params
    params.require(:usage).permit(:activity_id, :activity_variant_id, :quantity, :unit)
  end
end
