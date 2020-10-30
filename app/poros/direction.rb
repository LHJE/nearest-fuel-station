class Direction
  attr_reader :directions

  def initialize(attrs)
    @directions = get_directions(attrs)
  end

  def get_directions(attrs)
    narrative = []
    attrs.each do |attr|
      narrative << attr[:narrative]
    end
    narrative
  end
end
