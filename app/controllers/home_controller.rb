class HomeController < ApplicationController
  def show
		@stationJSON = HTTParty.get('http://www.capitalbikeshare.com/data/stations/bikeStations.xml')
  end
end
