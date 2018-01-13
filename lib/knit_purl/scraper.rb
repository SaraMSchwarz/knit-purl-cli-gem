class KnitPurl::Scraper

  def get_page
    doc = Nokogiri::HTML(open("https://www.purlsoho.com/patterns/knitting"))
  end

  def scrape_patterns_index
    self.get_page.css
  end   

end#of class
