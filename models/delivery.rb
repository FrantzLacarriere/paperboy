class Delivery < ActiveRecord::Base
  belongs_to :paperboy
  belongs_to :house
end