class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @name = name
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(name)
    pets[:fishes] = Fish(name, self)
  end
  
end