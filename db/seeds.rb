# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@activities = %w(walk cycle motorcycle bus taxi train).inject({}) do |hash, name|
  hash.update name.to_sym => Activity.create(name: name.titleize)
end

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
