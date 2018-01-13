class KnitPurl::Patterns
attr_accessor :name, :price, :brand, :url

@@all = []

  def self.new_from_index_page(p)
    self.new(
      ##
    )
  end

  def initialize
    @name = name
    @price = price
    @brand = brand
    @url = url
    @@all << self
  end


end
