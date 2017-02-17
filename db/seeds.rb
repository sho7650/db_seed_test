# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ENV['QUANTITY'].to_i.times do |i|
  Person.create(name: "name #{i}", birthdate: "1974-05-16", phone: "03-#{i}")
end
