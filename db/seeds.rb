require_relative "../config/environment"
(1..100).each do |num|
  House.create(:address => "#{num} Broadway")
end