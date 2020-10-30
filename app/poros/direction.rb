class Direction
  attr_reader :narrative,
              :travel_time

  def initialize(attrs)
    @narrative = get_narrative(attrs)
    @travel_time = get_travel_time(attrs)
  end

  def get_narrative(attrs)
    legs = []
    attrs.each do |attr|
      legs << attr[:narrative]
    end
    legs
  end

  def get_travel_time(attrs)
    hours = []
    minutes = []
    seconds = []
    attrs.each do |attr|
      hours << attr[:formattedTime].split(":")[0].to_i
      minutes << attr[:formattedTime].split(":")[1].to_i
      seconds << attr[:formattedTime].split(":")[2].to_i
    end
    time = (hours.sum * 360 + minutes.sum * 60 + seconds.sum)
    Time.at(time).utc.strftime("%H:%M:%S")
  end
end
