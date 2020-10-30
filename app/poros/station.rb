class Station
  attr_reader :station_name,
              :street_address,
              :fuel_type_code,
              :access_times

  def initialize(attrs)
    @station_name = attrs[:station_name]
    @street_address = get_address(attrs[:street_address], attrs[:city], attrs[:state], attrs[:zip])
    @fuel_type = get_fuel_type(attrs[:fuel_type_code])
    @access_times = attrs[:access_days_time]
  end

  def get_address(street, city, state, zip)
    "#{street} #{city}, #{state} #{zip}"
  end

  def get_fuel_type(type)
    if type == "ELEC"
      "Electric"
    end
  end
end
