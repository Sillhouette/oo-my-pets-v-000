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

  def buy(name)
    fish = Fish.new(name);
    @fishes << fish;
  end

end
