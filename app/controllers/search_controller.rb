class SearchController < ApplicationController
  def index
    @station = SearchFacade.find_station(params[:location])
  end
end
