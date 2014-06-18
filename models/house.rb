class House < ActiveRecord::Base
  has_many :deliveries
  has_one :paperboy, :through => :deliveries
  has_one :route

  def deliver(paperboy)
    self.deliveries.create(:date => Date.today, :paperboy_id => paperboy.id)
  end
end