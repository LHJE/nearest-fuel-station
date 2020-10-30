class Station
  attr_reader :name,
              :address,
              :fuel_type,
              :access_times

  def initialize(attrs)
    require "pry"; binding.pry
    @name = attrs[:name]
    @address = attrs[:address]
    @fuel_type = attrs[:fuel_type]
    @access_times = attrs[:access_times]
  end
end
