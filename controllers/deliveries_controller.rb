class DeliveriesController < ApplicationController

  get "/paperboys/:id/deliveries" do
    @paperboy = Paperboy.find(params[:id])
    erb :paperboy_deliveries
  end

end