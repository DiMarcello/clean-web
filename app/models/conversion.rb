class Conversion < ActiveRecord::Base

  validates :co2, presence: true
  validates :name, presence: true
  validates :unit, presence: true

  def consumption
    Unit(unit)
  end

end
