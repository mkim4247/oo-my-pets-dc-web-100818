class Fish
  attr_reader :name, :owner
  attr_accessor :mood
  
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
  end
  
end