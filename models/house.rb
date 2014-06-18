class House < ActiveRecord::Base
  has_many :deliveries
  has_one :paperboy, :through => :deliveries
  has_one :route

  def deliver(paperboy)
    house.deliveries.build(:date => Date.today, :paperboy_id => paperboy.id)
  end
end