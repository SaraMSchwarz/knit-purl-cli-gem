class KnitPurl::Patterns
attr_accessor :name, :price, :brand, :url

  def self.pattern
    #It should return a bunch of instances of Patterns
    #
    # puts <<-DOC.gsub /^\s*/, ''
    #   1. Sweaters
    #   2. Scarves
    # DOC
    pattern_1 = Pattern.new
    pattern_1.name = "sweater pattern"
    pattern_1.price = "$12"
    pattern_1.brand = "Purl Soho"
    pattern_1.url = "http://www.purlsoho.com"

    [pattern_1]
  end
end
