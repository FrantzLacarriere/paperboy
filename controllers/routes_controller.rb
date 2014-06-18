class RoutesController < ApplicationController

  get "/routes" do
    @routes = Route.all
    erb :routes_index
  end

  get "/routes/:id" do
    @route = Route.find(params[:id])
    erb :routes_show
  end

end