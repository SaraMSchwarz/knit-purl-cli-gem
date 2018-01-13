class KnitPurl::Patterns
attr_accessor :name, :price, :brand, :url

  def self.knitting
    self.scrape_patterns
  end

  def self.scrape_patterns
    patterns = []

    patterns << self.scrape_accessories
    patterns << self.scrape_hats
    patterns << self.scrape_scarves

    patterns
  end

  def self.scrape_accessories
    doc = Nokogiri::HTML(open("https://www.purlsoho.com/patterns/knitting.html?collection_filter=934"))
    #binding.pry
  end
end
