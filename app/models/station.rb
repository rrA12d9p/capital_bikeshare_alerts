class Station
  include HTTParty
  	format :xml

  def self.all
  	get('http://www.capitalbikeshare.com/data/stations/bikeStations.xml', query: {output: 'json'})['stations']['station']
  end

  def self.find(id)
  	id = id.to_s
  	self.all.select{|s| s["id"] == id}.first
  end

  def self.find_by(key, value)
  	self.all.select{|s| s[key] == value}.first
  end

end