class Medusa
  # make methods accessible outside this class
  attr_reader :name,:statues

  def initialize(name)
    # store Cassiopeia in instance variable made accessible outsid by attr_reader
    @name = name
    @statues = []
  end
  ##An object's instance variables are its attributes
# ##if you want to use a method code to reach instance variable, but not Ruby style
#  def name
#    @name
#  end
  def stare(victim)
    @statues << victim
    victim.get_stoned
  end


#statues attribute - collection? store how many statues medusa has in an array
  #def statues
  #end

end

class Person
  attr_reader :name
#  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def get_stoned
    @stoned = true
  end
end
