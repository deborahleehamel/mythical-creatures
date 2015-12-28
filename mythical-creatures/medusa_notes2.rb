# create one person
p1 = Person.new("John")

class Person
  def initialize(name)
    @name = name
  end
end

#now we can change the name of our personclass Person
  attr_reader :name
  attr_writer :name
  def initialize(name)
    @name = name
  end
end

# now we can change the name of our Person without ceaating another Person object
p1.name = "Other Name"

class Person
  def initialize(name)
    # every variable is a pointer to an instance
    @name = name
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

##If you write attr_writer:

attr_writer :age
##That gets translated into:

def age=(value)
  @age = value
end
##If you write attr_reader:

attr_reader :age

##That gets translated into:

def age
  @age
end
##If you write attr_accessor:

attr_accessor :age
##That gets translated into:

def age=(value)
  @age = value
end

def age
  @age
end
