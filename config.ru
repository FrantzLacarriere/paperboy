require File.join(File.expand_path("config/environment.rb"))

use DeliveriesController
use PaperboysController
use RoutesController
use HousesController
run ApplicationController