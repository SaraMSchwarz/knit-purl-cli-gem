# require 'open-uri'
# require 'nokogiri'

class KnitPurl::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.purlsoho.com/patterns/knitting"))
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
