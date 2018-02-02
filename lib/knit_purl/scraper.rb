require 'open-uri'
require 'nokogiri'
require 'pry'

class KnitPurl::Scraper

#scraper puts all the data in Patterns.all or @patterns

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
