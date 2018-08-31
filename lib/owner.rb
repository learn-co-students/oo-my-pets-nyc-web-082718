require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{species}."
  end



  def buy_fish(name)
   fish =  Fish.new(name)
   pets[:fishes] << fish
  end

  def buy_cat(name)
   cat =  Cat.new(name)
   pets[:cats] << cat
  end

  def buy_dog(name)
   dog =  Dog.new(name)
   pets[:dogs] << dog
 end

 def walk_dogs
   pets[:dogs][0].mood= "happy"
 end

 def play_with_cats
   pets[:cats][0].mood= "happy"
 end

 def feed_fish
   pets[:fishes][0].mood= "happy"
 end


 def sell_pets
   pets.each do |species, pet|
     pet.map do |p|
       p.mood = "nervous"
     end
    end
    pets.clear
 end

 def list_pets
   "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
 end

end
