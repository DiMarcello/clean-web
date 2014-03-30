# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@activities  = %w(walk cycle motorcycle bus taxi train).inject({}) do |hash, name|
  hash.update name.to_sym => Activity.create(name: name.titleize)
end

# BigDecimal.new(
@conversions = Conversion.create [{:co2 => BigDecimal.new("0.00354"), :name => "Light bulb", :unit => "hours lit lightbulb"}, {:co2 => BigDecimal.new("0.033528"), :name => "Apples", :unit => "apples"}, {:co2 => BigDecimal.new("0.09906"), :name => "Bananas", :unit => "bananas"}, {:co2 => BigDecimal.new("98.736"), :name => "Flight", :unit => "hours flying"}, {:co2 => BigDecimal.new("0.1122"), :name => "Flight distance", :unit => "km of flight"}, {:co2 => BigDecimal.new("0.015"), :name => "Train", :unit => "km by train"}, {:co2 => BigDecimal.new("0.078"), :name => "Underground", :unit => "km by subway"}, {:co2 => BigDecimal.new("0.014478"), :name => "Carrots", :unit => "carrots"}, {:co2 => BigDecimal.new("0.00236"), :name => "Cups of tea", :unit => "cups of tea"}, {:co2 => BigDecimal.new("0.002"), :name => "Laptop", :unit => "hours using a laptop"}, {:co2 => BigDecimal.new("0.173"), :name => "Car", :unit => "km by car"}, {:co2 => BigDecimal.new("0.000236"), :name => "Mobile charges", :unit => "mobile phone charges"}, {:co2 => BigDecimal.new("0.35052"), :name => "Tomatoes", :unit => "tomatoes"}, {:co2 => BigDecimal.new("0.3631"), :name => "Milk", :unit => "liters of milk"}, {:co2 => BigDecimal.new("5.5098"), :name => "Beef", :unit => "kg of beef"}, {:co2 => BigDecimal.new("10.443"), :name => "Fridge", :unit => "years running a fridge"}, {:co2 => BigDecimal.new("0.009617"), :name => "Television", :unit => "hours watching TV"}, {:co2 => BigDecimal.new("6.7056"), :name => "Salmon", :unit => "kg of salmon"}, {:co2 => BigDecimal.new("0.08382"), :name => "Rice", :unit => "portions of rice"}, {:co2 => BigDecimal.new("16.764"), :name => "Shrimps", :unit => "kg of shrimps"}, {:co2 => BigDecimal.new("0.03352"), :name => "Bread", :unit => "loafs of bread"}, {:co2 => BigDecimal.new("253.0"), :name => "Heating", :unit => "years heating a flat"}, {:co2 => BigDecimal.new("0.2286"), :name => "Beer", :unit => "bottles of beer"}, {:co2 => BigDecimal.new("1.0"), :name => "CO2", :unit => "kg of CO2"}]

["Average diet including imported food", "UK grown low-processed food", "Local organically produced food only"].each do |name|
  @activities[:walk].variants.create name: name
end

["A2-Stroke <50cc", "2-Stroke 50-125cc", "4-Stroke <250cc", "4-Stroke 250-750cc",
 "4-Stroke >750cc", "Electric scooter (std tariff)", "Electric scooter (green tariff)"].each do |name|
  @activities[:cycle].variants.create name: name
end


["A2-Stroke <50cc", "2-Stroke 50-125cc", "4-Stroke <250cc", "4-Stroke 250-750cc",
 "4-Stroke >750cc", "Electric scooter (std tariff)", "Electric scooter (green tariff)"].each do |name|
  @activities[:motorcycle].variants.create name: name
end

["Diesel (from 2006): Urban use", "Diesel (from 2006): Rural use", "Diesel (from 2006): Motorway use",
 "Diesel (2001-2006): Urban use", "Diesel (2001-2006): Rural use", "Diesel (2001-2006): Motorway use",
 "Diesel (1996-2001): Urban use", "Diesel (1996-2001): Rural use", "Diesel (1996-2001): Motorway use"].each do |name|
  @activities[:bus].variants.create name: name
end

["Black cab TXII [until 06]: Diesel", "Black cab TX4 [from 06]: Diesel",
 "Minicab passenger car: Diesel", "Minicab passenger car: Petrol"].each do |name|
  @activities[:taxi].variants.create name: name
end
