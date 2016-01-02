class Ogre
attr_reader :name, :home
attr_accessor :home, :encounter_counter, :swings, :apologize

  def initialize(name, home="Swamp")
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
    @apologize = true
  end

  def encounter
    @encounter_counter += 1
    @swings += 1
  end

  def swing_a_club
    @swings += 1
  end

  def hit?(human)
    if @swings == 2
      true
    end
  end

  def apologize(human)
    @apologize
  end
end

class Human
  attr_reader :name

  def initialize
    @name = "Jane"
  end

  def notices_ogre?
    if @encounter_counter % 3 ==0
      true
    else
      false
    end
  end

  def knocked_out?
    if @swings == 2
      true
    end
    if @apologize = true
      @knocked_out = false
    else
      @knocked_out
    end
  end


end
