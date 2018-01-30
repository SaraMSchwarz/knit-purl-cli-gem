class KnitPurl::Patterns
attr_accessor :name, :price

@@all = []

  # def self.new_from_index_page(p)
  #   self.new(
  #
  #   )
  # end

  def initialize
    @name = name
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end


end
