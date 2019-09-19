class Owner

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def species(species="human")
    @species = species
  end

  def say_species(species)
    puts "I am a #{species}"
  end



end
