require 'pry'

require_relative "cat"
require_relative "dog"
require_relative "fish"

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @species = "human"
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end

  def self.reset_all
    @@owners = []
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
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
    @pets[:dogs].map do |dog|
      dog.mood= "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood= "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood= "happy"
    end
  end

  def sell_pets
    ##sells all pets (empties pet array)
    ##pet moods change to nervous
    @pets.map do |animal, pet_array|

      pet_array.each do |pet_obj|
        pet_obj.mood= "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
