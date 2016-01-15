require "rubygems"
require "bundler/setup" # read http://bundler.io/

require "mongoid"
require_relative "./person"

# initialize Mongoid
Mongoid.load!("./mongoid.yml", :development)

# delete existing one
Person.delete_all

# create data in Person table
Person.create!(first_name: "Hiroshi", last_name: "Ogawa")
Person.create!(first_name: "Renjun", last_name: "Miao")
Person.create!(first_name: "Nathan", last_name: "Hosken")

# find data
p = Person.where(first_name: "Renjun").first
puts p.last_name

# update attributes
p.last_name = "Super Miao"
p.save!

# iterate matched data
Person.where(first_name: "Renjun").each do |renjun|
  puts renjun.last_name
end
