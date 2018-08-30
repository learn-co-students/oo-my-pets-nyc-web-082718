class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def say_species
    return "I am a human."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
     @pets[:dogs].each do |dog|
       dog.mood = "happy"
     end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    @pets.each do |petClass, pet|
      pet.each do |actualPet|
        actualPet.mood = 'nervous'
      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fishes = @pets[:fishes].count
    dogs = @pets[:dogs].count
    cats = @pets[:cats].count
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
end
