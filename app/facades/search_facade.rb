class SearchFacade
  def self.find_station(starting_location)
    attributes = StationDatabase.location(starting_location)
    Station.new(attributes)
  end
end
