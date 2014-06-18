class PaperboysController < ApplicationController

  post "/make_deliveries" do
    houses = Houses.where(:route_id => Routes.first)
    houses.each {|house| house.deliver(paperboy) }
  end

end