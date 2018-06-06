class Owner
  attr_accessor :name
  attr_reader :species

  @@all = [];

  def initialize(name)
    @name = name;
    @species = "human";
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
    puts @species;
  end

end
