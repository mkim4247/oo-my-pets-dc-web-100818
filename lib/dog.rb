class Dog
  attr_accessor :mood
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end
end