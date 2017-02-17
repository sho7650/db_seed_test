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

cache_size = 100000
quantity = ENV['QUANTITY'].to_i

t = quantity / cache_size
e = quantity % cache_size

t.times do |i|
  p = []
  cache_size.times do |j|
    p <<   Person.new(name: "name #{i * cache_size + j}", birthdate: "1974-05-16", phone: "03-#{i * cache_size + j}")
  end
  Person.import p
end

p = []
e.times do |j|
  p <<   Person.new(name: "name #{t*cache_size + j}", birthdate: "1974-05-16", phone: "03-#{t*cache_size + j}")
end
Person.import p
