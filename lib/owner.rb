class Owner
  attr_accessor :name
  attr_reader :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = species
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
  
  
  
end