class HousesController < ApplicationController

  get "/houses" do
    @houses = House.all
    erb :index
  end

  get "/houses/new" do
    @house = House.new
    erb :new
  end

  post "/houses" do
    @house = House.create(params[:house])
    redirect to "/houses"
  end

  get "/houses/:id" do
    @house = House.find(params[:id])
    @routes = Route.all
    erb :show
  end

  post "/houses/:id/join_route" do
    @house = House.find(params[:id])
    @route = Route.find(params[:route_id])
    @route.houses << @house
    redirect to("/houses")  
  end

  post "/houses/:id/make_delivery" do
    house = House.find(params[:id])
    delivery = paperboy.deliver(house)
    @deliveries = [delivery]
    erb :deliveries_made
  end

end