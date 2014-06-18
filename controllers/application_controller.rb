class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }
  enable  :sessions

  def paperboy
    # session[:paperboy_id]
    Paperboy.first
  end
end