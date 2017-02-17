# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# require 'activerecord-import'
# require 'activerecord-import/base'
# require 'activerecord-import/active_record/adapters/postgresql_adapter'

q = ENV['QUANTITY'].to_i

p t = q / 1000
p e = q % 1000

t.times do |i|
  p = []
  1000.times do |j|
    p <<   Person.new(name: "name #{i * 1000 + j}", birthdate: "1974-05-16", phone: "03-#{i * 1000 + j}")
  end
  Person.import p
end

p = []
e.times do |j|
  p <<   Person.new(name: "name #{t*1000 + j}", birthdate: "1974-05-16", phone: "03-#{t*1000 + j}")
end
Person.import p
