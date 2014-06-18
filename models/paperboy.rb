class Paperboy < ActiveRecord::Base
  has_many :deliveries
  has_many :routes
  has_many :houses, :through => :routes

  def make_deliveries(houses)
    houses.each do |house|
      deliver(house)
    end
  end

  def deliver(house)
    deliveries.create(:house_id => house.id)
  end
end