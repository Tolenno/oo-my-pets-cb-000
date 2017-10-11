require 'pry'

class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets = {cats: [], dogs: [], fishes: []}
  end

  def buy_fish(name)
    binding.pry
    fish = Fish.new(name)
    self.pets[:fishes] = fish
  end

  def walk_dogs
    self.pets[:dogs].collect (&:mood = "Happy")
  end
end
