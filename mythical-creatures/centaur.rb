class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
      @name = name
      @breed = breed
      @cranky = false
      @standing = true
      @actions = 0
      @drinks = 0
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
    @cranky = true if @actions >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if standing?
      return "NO!"
    else
      @actions = 0
      @crankly = false
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def drinks_potion
    if @standing == true
      @drinks += 1
    else
      @drinks = 0
    end
  end

  def rested?
    if @drinks > 0
      true
    else
      false
    end
  end

end
