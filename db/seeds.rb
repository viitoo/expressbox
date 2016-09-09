# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
courier = ["Aeropos","Airborne Express","Amazon Logistics","AP","China Post / International Mail","DHL / Airborne","FedEx","FedEx Freight","Lasership","Motor Freight - South Eastern","Other","Pitney Bowes","PriceSmart","SpeedBox","StratAir","Streamlite","UPS","UPS Mail Innovations","UPS Next Day","USPS","Walk-In","WN Direct","Otro"]
shop = ["AMAZON","EBAY","AEROPOSTALE","AMERICAN EAGLE","OTRA"]

5.times do
  date = Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
  Prealert.create(
    tracking_number: Faker::Code.ean ,
    curier: courier[rand(1..15)] ,
    shop: shop[rand(1..1)],
    value_price: Faker::Commerce.price,
    description: Faker::Lorem.sentence(3),
    created_at: date,
    updated_at: date,
    box_track: Faker::Code.imei,
    user_id: 3
    )
end
