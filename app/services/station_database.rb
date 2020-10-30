class StationDatabase
  def self.get_station(starting_location)
    key = ENV['NREL_API_KEY']
    url = 'https://developer.nrel.gov/api/alt-fuel-stations/v1/'
    uri = "nearest.json?api_key=#{key}&location=#{starting_location}&fuel_type=ELEC&limit=1"
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
