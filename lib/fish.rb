class Fish
  attr_reader :name
  attr_accessor :mood 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @mood = "nervous"
    @@all << name 
  end 
end