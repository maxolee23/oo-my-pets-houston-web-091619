class Owner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def species(species="human")
    @species = species
  end

  def say_species
    return "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.count
  end

  def self.reset_all
    Owner.all.clear
  end

  def cats
    Cat.all.select {|item| item.owner == self}
  end

  def dogs
    Dog.all.select {|item| item.owner == self}
  end


end
