# require 'open-uri'
# require 'nokogiri'
# require 'pry'

class Scraper

  def self.sweater_scraper
    sweater = Nokogiri::HTML(open("https://www.loveknitting.com/us/sweaters-knitting-patterns"))
    sweater.css(".card").collect do |pattern|
      pattern_info = {
        :name => pattern.css('.card-info span').text,
        :price => pattern.css('span.price').text
      }
      pattern_info
    end
  end

  def self.hat_scraper
    hat = Nokogiri::HTML(open("https://www.loveknitting.com/us/hat-knitting-patterns"))
    hat.css(".card").collect do |pattern|
      pattern_info = {
        :name => pattern.css('.card-info span').text,
        :price => pattern.css('span.price').text
      }
      pattern_info
    end
  end

  def self.scarves_scraper
    scarf = Nokogiri::HTML(open("https://www.loveknitting.com/us/scarf-knitting-patterns"))
    scarf.css(".card").collect do |pattern|
      pattern_info = {
        :name => pattern.css('.card-info span').text,
        :price => pattern.css('span.price').text
      }
      pattern_info
    end
  end

  def self.cardigans_scraper
    cardigan = Nokogiri::HTML(open("https://www.loveknitting.com/us/cardigan-knitting-patterns"))
    cardigan.css(".card").collect do |pattern|
      pattern_info = {
        :name => pattern.css('.card-info span').text,
        :price => pattern.css('span.price').text
      }
      pattern_info
    end
  end

end
