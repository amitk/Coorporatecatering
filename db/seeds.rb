# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
vendor = [{name: "foodpanda",location: "vishrantwadi",phone: 2512},
{name: "swiggy",location: "baner",phone: 2313},
{name: "kfc",location: "vishrantwadi",phone: 2145},
{name: "dominos",location: "baner",phone: 5642},
{name: "burger_king",location: "mg_road",phone: 9879}]

vendor_array = []
vendor.each do |i|
	vendor_array << Vendor.find_or_create_by(i)
end


menu = [{name: "rolls",rate: 30,veg: true},
{name: "rolls",rate: 50,veg: false},
{name: "pizza",rate: 40,veg: true},
{name: "pizza",rate: 80,veg: false},
{name: "burger",rate: 100,veg: true}]

menu.each do |i|
	vendor_array[0].menus.find_or_create_by(i)	
end

