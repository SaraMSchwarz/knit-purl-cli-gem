#this is the CLI controller
require 'pry'
class KnitPurl::CLI

  def call
    puts "♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥"
    puts "╔════════════════════════════════╗"
    puts "      Patterns for knitters"
    puts "╚════════════════════════════════╝"
    puts "♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥"
    menu
    KnitPurl::Scraper.sweater_scraper
    get_patterns
    list_patterns
    goodbye
  end

  def get_patterns
    @patterns = KnitPurl::Pattern.all
  end

  def list_patterns
    @patterns.each.with_index(1) do |b, i|
      puts "#{i}. #{b.name} (#{b.price})"
    end

  end

  def menu
    puts ""
    puts "Enter the number of pattern category you want more info on or type exit."
    puts ""
    puts "1. Sweaters"
    puts "2. Hats"
    puts "3. Scarves"
    puts "4. Cardigans"
    puts "5. Blankets and throws"

    input = nil
    while input != "exit"
      input = gets.chomp

      if input.to_i == 1
        puts list_patterns
        # puts get_patterns
        # pat = @patterns[input.to_i - 1]
        # @patterns.each.with_index(1) do |b, i|
        # puts "#{b.name} #{b.price}"


      elsif input == "menu"
        menu

      elsif input == "exit"
        puts  "Come back later to look for new patters!"

      elsif
        puts "Your selection was incorrect, please type list to see the categories or exit to exit the program."
      end#ofmethod
     end
   end












  #   while input != "exit"
  #
  #     input = gets.strip.downcase
  #
  #     if input.to_i == 1
  #       @sweater_scraper = KnitPurl::Scraper.new
  #       @sweater_scraper.scrape
  #       puts @pattern_info
  #
  #
  #     elsif input.to_i == 2
  #       @scraper = KnitPurl::Scraper.new("hat")
  #       puts @scraper.scrape
  #
  #     elsif input.to_i == 3
  #       @scraper = KnitPurl::Scraper.new("scarf")
  #       puts @scraper.scrape
  #
  #     elsif input.to_i == 4
  #       @scraper = KnitPurl::Scraper.new("cardigan")
  #       puts @scraper.scrape
  #
  #     elsif input.to_i == 5
  #       @scraper = KnitPurl::Scraper.new("blanket")
  #       puts @scraper.scrape
  #
  #     elsif input == "list"
  #       list_patterns
  #
  #     elsif input == "exit"
  #       "Come back later to look for new patters!"
  #
  #     else
  #       puts "Your selection was incorrect, please type list to see the categories or exit to exit the program."
  #
  #     end#of conditionals
  #   end#of while
  # end#of menu


  # def goodbye
  #   puts "╔══════════════════════════════════════════╗"
  #   puts "  Come back later to look for new patters! "
  #   puts "╚══════════════════════════════════════════╝"
  #
  #
  # end#of goodbye

end#of class
