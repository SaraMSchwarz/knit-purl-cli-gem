# require 'open-uri'
# require 'nokogiri'

class KnitPurl::Scraper

  def self.get_page
    doc = Nokogiri::HTML(open("https://www.loveknitting.com/us/knitting-patterns#?"))
    patterns = []
    name = pattern.css("").attribute("data-name")
    brand = pattern.css("").attribute("data-brand")
    price = pattern.css("").attribute("data-price")
#store each pattern's name, brand and price in a hash and push each hash into our array.
    patterns << {name: name, brand: brand, price: price}
    patterns
  end

  def scrape_patterns_index
    self.get_page.css
  end

  def make_patterns
    scrape_patterns_index.each do |p|
      KnitPurl::Pattern.new_from_index_page(p)
    end
  end

end#of class
