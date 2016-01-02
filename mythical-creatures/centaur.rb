class Centaur
  attr_reader :name, :breed
  attr_accessor :cranky, :standing, :actions, :laying, :rested, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @actions = 0
    @laying = false
    @rested = false
    @sick = false
  end

  def shoot
    if cranky? || laying?
      "NO!"
    else
      @actions += 1
      "Twang!!!"
    end
  end

  def run
    if cranky? || laying?
      "NO!"
    else
      @actions += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @actions >= 3
      @cranky = true
    else
      @cranky
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      "NO!"
    else
      @cranky = false
      @actions = 0
    end
  end

  def lay_down
    @laying = true
    @standing = false
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drinks_potion
    if standing?
      @rested = true
    end
    if rested?
      @sick = true
    end
  end

  def rested?
    @rested
  end

  def sick?
    @sick
  end
end
