class Cat

  attr_accessor :owner
  attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner
  end

  def mood(mood="nervous")
    @mood = mood 
  end



end
