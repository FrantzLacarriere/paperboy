class Paperboy < ActiveRecord::Base
  has_many :deliveries
  has_many :routes
  has_many :houses, :through => :routes
end