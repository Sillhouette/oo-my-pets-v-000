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

  def self.count_owners
    @@all.length;
  end

  def self.reset
    self.all.clear;
  end

end
