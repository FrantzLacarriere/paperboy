require File.join(File.expand_path("config/environment.rb"))

use PaperboysController
use RoutesController
use HousesController
run ApplicationController