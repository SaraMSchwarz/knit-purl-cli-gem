class KnitPurl::Patterns
attr_accessor :name, :price, :brand, :url

  def self.pattern
    self.scrape_patterns
  end

  def self.scrape_patterns
    #go to purlsoho.com, find the patterns
    #extract the patterns
    #instantiate a pattern
    # [patterns] return an array of patterns
  end
end
