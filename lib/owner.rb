class Owner
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.count
    self.class.all.count
  end
  
  def.self.clear
  
end