class DirectionDatabase
  def self.get_station(starting_location, ending_location)
    key = ENV['MAPQUEST_API_KEY']
    url = 'http://www.mapquestapi.com/directions/v2/'
    uri = "route?key=#{key}&from=#{starting_location}&to=#{ending_location}"
    get_results(url, key, uri)
  end

  def self.get_results(url, key, uri)
    conn = Faraday.new(url: url) do |faraday|
      faraday.headers['X-API-Key'] = key
    end
    results = conn.get(uri)
    JSON.parse(results.body, symbolize_names: true)
  end
end
