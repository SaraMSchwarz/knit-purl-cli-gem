require 'open-uri'
require 'nokogiri'
require 'pry'

class KnitPurl::Scraper

  def initialize(category)
#initializes @url, using string interpolation for category (sweaters, cardigans, hats) in the url
    @url = "https://www.loveknitting.com/us/#{category}-knitting-patterns"
  end#of initialize

  def scrape
#opens the initialized url using Nokogiri
    doc = Nokogiri::HTML(open(@url))
#creates a variable called patterns which is an empty array
    patterns = []
#scrapes name and price from the CSS file
    doc.css(".card").each do |pattern|
      name = pattern.css('.card-info span').text
      price = pattern.css('span.price').text
#store each pattern's name and price in a hash and pushes each hash into our patterns array.
    patterns << {name: name, price: price}
  end#of scrape
#returns patterns
    patterns
  end#of patterns


  # def make_patterns
  #   scrape_patterns_index.each do |p|
  #     KnitPurl::Pattern.new_from_index_page(p)
  #   end
  # end

end#of class
