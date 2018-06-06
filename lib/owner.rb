class Owner
  attr_accessor :name, :pets, :fishes, :dogs, :cats
  attr_reader :species

  @@all = [];

  def initialize(name)
    @name = name;
    @species = "human";
    @pets = {fishes: [], cats: [], dogs: []};
    self.class.all << self;
  end

  def self.all
    @@all;
  end

  def self.count
    @@all.length;
  end

  def self.reset_all
      self.all.clear;
  end

  def say_species
    "I am a #{@species}.";
  end

  def pets
    @pets;
  end

  def buy_fish(name)
    fish = Fish.new(name);
    pets[:fishes] << fish;
  end

  def buy_dog(name)
    dog = Dog.new(name);
    pets[:dogs] << dog;
  end

  def buy_cat(name)
    cat = Cat.new(name);
    pets[:cats] << cat;
  end

  def walk_dogs
    pets.each {|pet| pets[:dogs].value = "happy"};
  end
end
