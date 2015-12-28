class Dragon
  attr_reader :name, :color

  def initialize(name, rider = "Lessa", color = "gold")
    @name = name
    @rider = rider
    @color color
  end

  def rider
    @rider
  end

  def color
    @color = "gold"
  end

end
