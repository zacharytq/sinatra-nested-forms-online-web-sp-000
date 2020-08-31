class Ship
  attr_reader :name, :type, :booty
  @@all = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
