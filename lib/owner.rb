class Owner
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.class.all.count
  end
  
  def self.reset_all
    self.class.all.clear
  end
  
  
  
end