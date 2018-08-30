require 'pry'
require_relative './fish'
require_relative './dog'
require_relative './cat'

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{species}."
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
    @pets[:dogs].map do |animal|
      animal.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |animal|
      animal.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |animal|
      animal.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |animals, names|
      names.each do |attribute|
        attribute.mood = "nervous"
      end
    end

    @pets = {}
  end

  def list_pets
    fish = @pets[:fishes].length
    dogs = @pets[:dogs].length
    cats = @pets[:cats].length

    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end






end
