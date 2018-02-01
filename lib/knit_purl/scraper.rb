require 'open-uri'
require 'nokogiri'
require 'pry'

class KnitPurl::Scraper

#   def initialize(category)
# #initializes @url, using string interpolation for category (sweaters, cardigans, hats) in the url
#     @url = "https://www.loveknitting.com/us/#{category}-knitting-patterns?limit=30"
#   end#of initialize
#
#   def scrape
#     pattern = KnitPurl::Pattern.new
# #opens the initialized url using Nokogiri
#     doc = Nokogiri::HTML(open(@url))
# #creates a variable called patterns which is an empty array
#     # patterns = []
# #scrapes name and price from the CSS file
#     doc.css(".card").each do |pattern|
#       name = pattern.css('.card-info span').text
#       price = pattern.css('span.price').text
# #store each pattern's name and price in a hash and pushes each hash into our patterns array.
#     patterns << {name: name, price: price}
#   end#of scrape
# #returns patterns
#     patterns
#   end#of patterns

#
# end#of class

  def self.sweater_scraper
    page = Nokogiri::HTML(open("https://www.loveknitting.com/us/knitting-patterns#?garment=1739"))
    page.css(".card").collect do |b|
      pattern = KnitPurl::Pattern.new
      pattern.name = b.css('.card-info span').text
      pattern.price = b.css('span.price').text
      pattern.save
    end
  end
end
