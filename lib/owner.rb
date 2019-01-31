class Owner
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
  end
end
