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
    @species = species
    puts "I am a #{species}"
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
