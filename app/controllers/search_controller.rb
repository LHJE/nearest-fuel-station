class SearchController < ApplicationController
  def index
    @station = SearchFacade.find_station(params[:location])
    @directions = SearchFacade.find_directions(params[:location], @station.street_address)
  end
end
