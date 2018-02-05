require 'open-uri'
require 'nokogiri'
require 'pry'

class KnitPurl::Scraper

  def self.sweater_scraper
    page = Nokogiri::HTML(open("https://www.loveknitting.com/us/sweaters-knitting-patterns"))
    page.css(".card").collect do |b|
      pattern = KnitPurl::Pattern.new
      pattern.name = b.css('.card-info span').text
      pattern.price = b.css('span.price').text
      pattern.save
    end
  end

  def self.hat_scraper
    page = Nokogiri::HTML(open("https://www.loveknitting.com/us/hat-knitting-patterns"))
    page.css(".card").collect do |b|
      pattern = KnitPurl::Pattern.new
      pattern.name = b.css('.card-info span').text
      pattern.price = b.css('span.price').text
      pattern.save
    pattern
    end
  end

  def self.scarves_scraper
    page = Nokogiri::HTML(open("https://www.loveknitting.com/us/scarf-knitting-patterns"))
    page.css(".card").collect do |b|
      pattern = KnitPurl::Pattern.new
      pattern.name = b.css('.card-info span').text
      pattern.price = b.css('span.price').text
      pattern.save
    pattern
    end
  end

  def self.cardigans_scraper
    page = Nokogiri::HTML(open("https://www.loveknitting.com/us/cardigan-knitting-patterns"))
    page.css(".card").collect do |b|
      pattern = KnitPurl::Pattern.new
      pattern.name = b.css('.card-info span').text
      pattern.price = b.css('span.price').text
      pattern.save
    pattern
    end
  end
end
