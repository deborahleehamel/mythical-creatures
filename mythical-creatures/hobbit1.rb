class Hobbit
  attr_reader :name, :disposition

  def initialize(name, disposition)
    @name = name
    @disposition = disposition
  end

  def disposition
    if @name = "Peregrin"
      @disposition = "homebody"
    else @disposition = "adventurous"
  end
end
