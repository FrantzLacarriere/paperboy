class PaperboysController < ApplicationController

  post "/paperboys/:id/routes/:route_id/make_deliveries" do
    paperboy = Paperboy.find(params[:id])
    route = Route.find(params[:route_id])
    @deliveries = route.deliver_papers(paperboy)
    erb :deliveries_made
  end

  get "/paperboys" do
    @paperboys = Paperboy.all
    erb :paperboys_index
  end

  get "/paperboys/:id" do
    @paperboy = Paperboy.find(params[:id])
    erb :paperboys_show
  end

end