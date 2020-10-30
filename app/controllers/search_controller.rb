class SearchController < ApplicationController
  def index
    @station = SearchFacade.find_station(params[:location])
    @directions = SearchFacade.find_directions(params[:location])
  end
end
