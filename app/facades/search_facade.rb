class SearchFacade
  def self.find_station(starting_location)
    attributes = StationDatabase.get_station(starting_location)[:fuel_stations][0]
    Station.new(attributes)
  end
end
