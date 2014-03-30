# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@activities = %w(walk cycle motorcycle bus taxi train rail tube fly car).inject({}) do |hash, name|
  hash.update name.to_sym => Activity.create(name: name.titleize)
end

[["Average diet including imported food", "24.15"], ["UK grown low-processed food", "6.66"], ["Local organically produced food only", "4.83"]].each do |(name, carbon)|
  @activities[:walk].variants.create name: name, co2: BigDecimal.new(carbon)
end

[["Average diet including imported food", "18.4"], ["UK grown low-processed food", "10.27"], ["Local organically produced food only", "7.56"]].each do |(name, carbon)|
  @activities[:cycle].variants.create name: name, co2: BigDecimal.new(carbon)
end

[["A2-Stroke <50cc", "47.9"], ["2-Stroke 50-125cc", "63.30"], ["4-Stroke <250cc", "88.3"], ["4-Stroke 250-750cc", "120.7"], ["4-Stroke >750cc", "190.33"], ["Electric scooter (std tariff)", "30.98"], ["Electric scooter (green tariff)", "7.44"]].each do |(name, carbon)|
  @activities[:motorcycle].variants.create name: name, co2: BigDecimal.new(carbon)
end


[["Diesel (from 2006): Urban use", "0.0023"], ["Diesel (from 2006): Rural use", "21.22"], ["Diesel (from 2006): Motorway use", "23.17"], ["Diesel (2001-2006): Urban use", "31.28"], ["Diesel (2001-2006): Rural use", "21.22"], ["Diesel (2001-2006): Motorway use", "23.17"], ["Diesel (1996-2001): Urban use", "31.28"], ["Diesel (1996-2001): Rural use", "21.22"], ["Diesel (1996-2001): Motorway use", "23.17"]].each do |(name, carbon)|
  @activities[:bus].variants.create name: name, co2: BigDecimal.new(carbon)
end

[["Black cab TXII [until 06]: Diesel", "304,41"], ["Black cab TX4 [from 06]: Diesel", "300.88"],
 ["Minicab passenger car: Diesel", "240.68"], ["Minicab passenger car: Petrol", "280.52"]].each do |(name, carbon)|
  @activities[:taxi].variants.create name: name, co2: BigDecimal.new(carbon)
end

[["Voyager class: diesel-electric (Virgin Trains)", "36,48"], ["InterCity 125: diesel-electric (national network)", "38.03"], ["Sprinter: diesel (regional network)", "31.84"], ["Network Turbo: diesel (regional network)", "25.56"], ["InterCity 225: electric (national network)", "17.6"]].each do |(name, carbon)|
  @activities[:rail].variants.create name: name, co2: BigDecimal.new(carbon)
end

[["London Underground", "21.05"]].each do |(name, carbon)|
  @activities[:tube].variants.create name: name, co2: BigDecimal.new(carbon)
end

[["Domestic UK (B737-400)", "227.57"],["Short-haul International (B737-400)", "189.39"], ["Long-haul International (B747-400)", "230.03"]].each do |(name, carbon)|
  @activities[:fly].variants.create name: name, co2: BigDecimal.new(carbon)
end

[["Average city-car diesel", "182.94"], ["Average city-car petrol", "199.81"], ["Average city-car LP gas", "174.83"], ["Average city-car natural gas", "150.07"],["Average city-car petrol hybrid", "152.31"], ["Average city-car electric (standard)", "110.90"], ["Average city-car electric (green)", "30.65"],["Average large family diesel", "266.10"], ["Average large family petrol", "317.12"], ["Average large family LP gas", "276.58"], ["Average large family natural gas", "231.21"], ["Average large family petrol hybrid", "241.19"], ["Average large family electric (standard)", "125.45"], ["Average large family electric (green)", "53.48"], ["Average small family diesel", "231.67"], ["Average small family petrol", "278.33"], ["Average small family LP gas", "242.92"], ["Average small family natural gas", "204.37"], ["Average small family petrol hybrid", "211.79"], ["Average small family electric (standard)", "120.63"], ["Average small family electric (green)", "47.25"], ["Average super-mini diesel", "196.29"], ["Average super-mini petrol", "234.40"], ["Average super-mini LP gas", "204.81"], ["Average super-mini natural gas", "173.96"], ["Average super-mini petrol hybrid", "178.51"], ["Average super-mini electric (standard)", "115.19"], ["Average super-mini electric (green)", "40.20"], ["Average SUV / 4x4 diesel", "371.01"], ["Average SUV / 4x4 petrol", "399.19"], ["Average SUV / 4x4 LP gas", "347.74"], ["Average SUV / 4x4 natural gas", "287.91"], ["Average SUV / 4x4 petrol hybrid", "303.36"], ["Average SUV / 4x4 electric (standard)", "135.63"], ["Average SUV / 4x4 electric (green)", "66.64"]].each do |(name, carbon)|
  @activities[:car].variants.create name: name, co2: BigDecimal.new(carbon)
end

@conversions = Conversion.create [{:co2 => BigDecimal.new("0.00354"), :name => "Light bulb", :unit => "hours lit lightbulb"}, {:co2 => BigDecimal.new("0.033528"), :name => "Apples", :unit => "apples"}, {:co2 => BigDecimal.new("0.09906"), :name => "Bananas", :unit => "bananas"}, {:co2 => BigDecimal.new("98.736"), :name => "Flight", :unit => "hours flying"}, {:co2 => BigDecimal.new("0.1122"), :name => "Flight distance", :unit => "km of flight"}, {:co2 => BigDecimal.new("0.015"), :name => "Train", :unit => "km by train"}, {:co2 => BigDecimal.new("0.078"), :name => "Underground", :unit => "km by subway"}, {:co2 => BigDecimal.new("0.014478"), :name => "Carrots", :unit => "carrots"}, {:co2 => BigDecimal.new("0.00236"), :name => "Cups of tea", :unit => "cups of tea"}, {:co2 => BigDecimal.new("0.002"), :name => "Laptop", :unit => "hours using a laptop"}, {:co2 => BigDecimal.new("0.173"), :name => "Car", :unit => "km by car"}, {:co2 => BigDecimal.new("0.000236"), :name => "Mobile charges", :unit => "mobile phone charges"}, {:co2 => BigDecimal.new("0.35052"), :name => "Tomatoes", :unit => "tomatoes"}, {:co2 => BigDecimal.new("0.3631"), :name => "Milk", :unit => "liters of milk"}, {:co2 => BigDecimal.new("5.5098"), :name => "Beef", :unit => "kg of beef"}, {:co2 => BigDecimal.new("10.443"), :name => "Fridge", :unit => "years running a fridge"}, {:co2 => BigDecimal.new("0.009617"), :name => "Television", :unit => "hours watching TV"}, {:co2 => BigDecimal.new("6.7056"), :name => "Salmon", :unit => "kg of salmon"}, {:co2 => BigDecimal.new("0.08382"), :name => "Rice", :unit => "portions of rice"}, {:co2 => BigDecimal.new("16.764"), :name => "Shrimps", :unit => "kg of shrimps"}, {:co2 => BigDecimal.new("0.03352"), :name => "Bread", :unit => "loafs of bread"}, {:co2 => BigDecimal.new("253.0"), :name => "Heating", :unit => "years heating a flat"}, {:co2 => BigDecimal.new("0.2286"), :name => "Beer", :unit => "bottles of beer"}, {:co2 => BigDecimal.new("1.0"), :name => "CO2", :unit => "kg of CO2"}]
