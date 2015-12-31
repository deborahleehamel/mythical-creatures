class Pirate
  attr_reader :name, :job, :commit_heinous_act

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @evil_deed = 0
    @booty = 0
  end

  def cursed?
    if @evil_deed >= 3
      true
    else
      false
    end
  end

  def commit_heinous_act
    @evil_deed = @evil_deed + 1
  end

  def rob_ship
    @booty += 100
  end

  def booty
    @booty
  end

end
