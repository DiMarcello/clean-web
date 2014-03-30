class Calculation
  include ActiveModel::Model
  attr_accessor :activity_variant_id, :conversion_id, :quantity, :unit
  delegate :unit, to: :conversion, allow_nil: true

  def activity_variant
    @activity_variant ||= ActivityVariant.find(activity_variant_id) if activity_variant_id
  end

  def conversion
    @conversion ||= Conversion.find(conversion_id) if conversion_id
  end

  def quantity=(input)
    @quantity = BigDecimal.new(input)
  end

  def result
    return nil unless activity_variant && quantity
    conversion.convert(activity_variant.co2 * quantity)
  end

end
