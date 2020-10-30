class SearchFacade
  def self.find_station(starting_location)
    attributes = StationDatabase.get_station(starting_location)[:fuel_stations][0]
    Station.new(attributes)
  end

  def self.find_directions(starting_location, ending_location)
    attributes = DirectionDatabase.get_station(starting_location, ending_location)[:route][:legs][0][:maneuvers]
    Direction.new(attributes)
  end
end
