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
    @pets[:fishes] = class.Fish.new(name)
  end
end

binding.pry
