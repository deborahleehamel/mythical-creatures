class Medusa
attr_reader :name
attr_accessor :statues, :alive, :victim_count

  def initialize(name)
    @name = name
    @statues = []
    @alive = true
    @victim_count = 0
  end

  def stare(victim)
      @statues << victim
      victim.stoned = true
      @victim_count += 1
    if @statues.count > 3
      @statues.shift.stoned = false
    end
  end

  def alive?
    if @victim_count >= 5
      @alive = false
    end
      @alive
  end
end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end
