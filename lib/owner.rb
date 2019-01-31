require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes =>[], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |element|
      element.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |element|
      element.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |element|
      element.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |k,v|
      v.each do |element|
        element.mood = "nervous"
      end
    end
  end
end
