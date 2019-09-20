class Owner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@cats = []
    @@dogs = []
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

  def buy_cat(name)
     Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    #  binding.pry
      self.dogs.each do |dog|
     dog.mood = "happy"
   end
 end

 def feed_cats
#  binding.pry
  self.cats.each do |cat|
    cat.mood = "happy"
  end
end


end
