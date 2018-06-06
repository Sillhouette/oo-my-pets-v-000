class Owner
  attr_accessor :name

  @@all = [];

  def initialize(name)

  end

  def self.all
    @@all;
  end

  def self.count_owners
    @@all.length;
  end

  def reset
    self.all.clear;
  end
end