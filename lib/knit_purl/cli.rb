#this is the CLI controller
class KnitPurl::CLI

#three methods; list_patterns, menu and goodbye
  def call
    puts "♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥"
    puts "╔════════════════════════════════╗"
    puts "      Patterns for knitters"
    puts "╚════════════════════════════════╝"
    puts "♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥"
    list_patterns
    menu
    goodbye
  end#of call

  def list_patterns
    puts ""
    puts "Enter the number of pattern category you want more info on or type exit."
    puts ""
    puts "1. Sweaters"
    puts "2. Hats"
    puts "3. Scarves"
    puts "4. Cardigans"
    puts "5. Blankets and throws"
  end#of list_patterns


  def menu

    input = nil
#gets users input and puts it in downcase
    while input != "exit"

      input = gets.strip.downcase

      if input.to_i == 1
        @scraper = KnitPurl::Scraper.new("sweaters")
        @scraper.scrape

      elsif input.to_i == 2
        @scraper = KnitPurl::Scraper.new("hat")
        @scraper.scrape

      elsif input.to_i == 3
        @scraper = KnitPurl::Scraper.new("scarf")
        @scraper.scrape

      elsif input.to_i == 4
        @scraper = KnitPurl::Scraper.new("cardigan")
        @scraper.scrape

      elsif input.to_i == 5
        @scraper = KnitPurl::Scraper.new("blanket")
        @scraper.scrape

      elsif input == "list"
        list_patterns

      elsif input == "exit"
        "Come back later to look for new patters!"

      else
        puts "Your selection was incorrect, please type list to see the categories or exit to exit the program."

      end#of conditionals
    end#of while
  end#of menu


  def goodbye
    puts "╔══════════════════════════════════════════╗"
    puts "  Come back later to look for new patters! "
    puts "╚══════════════════════════════════════════╝"


  end#of goodbye

end#of class
