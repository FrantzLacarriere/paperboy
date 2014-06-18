require 'bundler/setup'
Bundler.require

ENV['SINATRA_ENV'] ||= "development"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/paperboy_#{ENV['SINATRA_ENV']}.sqlite"
)

Dir[File.join(File.expand_path(""), "/models", "*.rb")].each {|f| require f}
Dir[File.join(File.expand_path(""), "/controllers", "*.rb")].each {|f| require f}

