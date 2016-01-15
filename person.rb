require "mongoid/document"

# NOTE: defining table (aka collection)
class Person
  include Mongoid::Document
  field :first_name, type: String
  field :middle_name, type: String
  field :last_name, type: String

  validates :first_name, uniqueness: true
end
