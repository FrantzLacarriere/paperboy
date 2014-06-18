class Route < ActiveRecord::Base
  belongs_to :paperboy
  has_many :houses

  def deliver_papers(paperboy)
    houses.collect {|house| house.deliver(paperboy) }
  end

  def make_deliveries
    paperboy.make_deliveries(houses)
  end
end