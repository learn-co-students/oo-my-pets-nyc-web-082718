require "pry"

# require_relative "./cat"
# require_relative "./dog"
# require_relative "./fish"
class Owner

  attr_reader :species
  attr_accessor :name, :pets

@@owner = []

def initialize(name)
  @name = name
  @species = "human"
  @@owner << self
  @pets = Hash.new
  @pets[:cats] = []
  @pets[:dogs] = []
  @pets[:fishes] = []
  # binding.pry
end


def self.all
  @@owner
end

def self.reset_all
  @@owner = []
  @@owner.length
end

def self.count
  @@owner.length
end

def say_species
  "I am a #{@species}."
end

def buy_fish(fish)
  new_fish = Fish.new(fish)
  @pets[:fishes].push(new_fish)
end

def buy_cat(cat)
  new_cat = Cat.new(cat)
  @pets[:cats].push(new_cat)
end

def buy_dog(dog)
  new_dog = Dog.new(dog)
  @pets[:dogs].push(new_dog)
end

def walk_dogs
  @pets[:dogs].map do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].map do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].map do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
@pets.values.flatten.map do |animal|
    animal.mood = "nervous"
  end
  @pets = {}
end

def list_pets

  #going through each of the ?? in hash
  #assign var based on ... key?
  #assign value length of value

# @pets.each do |k, v|
#
# end


cats_num = @pets[:cats].length
dogs_num = @pets[:dogs].length
fish_num = @pets[:fishes].length


"I have #{fish_num} fish, #{dogs_num} dog(s), and #{cats_num} cat(s)."
end

end
