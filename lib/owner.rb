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
    self.pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    Dog.all.collect { |dog| dog.mood = "happy" }
  end
  
  def play_with_cats
    Cat.all.collect { |cat| cat.mood = "happy" }
  end
  
end