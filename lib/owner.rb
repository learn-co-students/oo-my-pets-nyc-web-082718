class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}

    @@all << self
    @@count += 1
  end

# class methods

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

# instance methods

  def say_species
    "I am a #{@species}."
  end

# buy pets

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

# care for pets

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
      fish.mood = "happy"
    end
  end

  # manage pets

  def sell_pets
    @pets.each do |species, arr|
      arr.each do |pet|
        pet.mood = "nervous"
      end
      # arr = []
      @pets[species] = []
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
