class Conversion < ActiveRecord::Base

  validates :co2, presence: true
  validates :name, presence: true
  validates :unit, presence: true

  def consumption
    Unit(unit)
  end

  def convert(source_co2)
    source_co2 * co2
  end
end
