class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(name)
    @name = name
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
  
  def species
    @species = "human"
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    @pets[:fishes] = Fish(name, self)
  end
  
end