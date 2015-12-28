def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    medusa = Medusa.new("Cassiopeia")
    victim1 = Person.new("Perseus")
    victim2 = Person.new("Jeff")
    victim3 = Person.new("Mike")
    victim4 = Person.new("Horace")

    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)
    assert_equal false, victim1.stoned?
  end

  def stare(victim)
   @statues.push(victim)
     if @statues.count > 3
         @statues.shift.unstone
     else
       victim.got_stoned
     end
   end
 end

 def stoned?
   @stoned
 end

 def got_stoned
    @stoned = true
 end

 def unstone
   @stoned = false
 end

 
