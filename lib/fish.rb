class Fish
  attr_reader :name, :owner
  attr_accessor :mood
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end