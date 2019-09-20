class Owner

  attr_reader :name

  @@all = []

  def initialize(name, species)
    @name = name
    @species = species
    @@all << self
  end

  def species(species="human")
    @species = species
  end

  def say_species(species)
    return "I am a "+ species + "."
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



end
