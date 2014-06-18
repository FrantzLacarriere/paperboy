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
    # binding.pry
    @house = House.find(params[:id])
    @route = Route.find(params[:route_id])
    @route.houses << @house
    redirect to("/houses")  
  end

end