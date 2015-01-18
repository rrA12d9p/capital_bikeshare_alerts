class StationController < ApplicationController
  def index
  	@all = Station.all
  end

  def show
		@stationJSON = HTTParty.get('http://www.capitalbikeshare.com/data/stations/bikeStations.xml')
  end

  def search
  	id = params[:q]
  	redirect_to station_show_path(id)
  end

  def show
  	@id = params[:id]
  	@station = Station.find(@id)
  end
end