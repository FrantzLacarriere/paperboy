class Route < ActiveRecord::Base
  belongs_to :paperboy
  has_many :houses
end