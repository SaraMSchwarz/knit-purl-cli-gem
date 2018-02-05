# require 'pry'
class CommandLineInterface

  def start

    sweater = Category.new("Sweaters", Scraper.sweater_scraper)
    hat = Category.new("Hats", Scraper.hat_scraper)
    scarf = Category.new("Scarves", Scraper.scarves_scraper)
    cardigan = Category.new("Cardigans", Scraper.cardigans_scraper)

    @input = nil

    puts "♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥"
    puts "╔════════════════════════════════╗"
    puts "      Patterns for knitters"
    puts "╚════════════════════════════════╝"
    puts "♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥"

    menu
  end

  def menu

    while @input != "exit"
    puts ""
    puts "Enter the number of pattern category to see a list of available patterns, or type exit."
    puts ""
    puts "1. Sweaters"
    puts "2. Hats"
    puts "3. Scarves"
    puts "4. Cardigans"

    # Category.print_all

    @input = gets.strip

      if @input.to_i == 1
        puts select_pattern_by_category

      elsif @input.downcase == "list"
        menu
      elsif @input.downcase == "exit"
        exit
      # elsif @input.to_i.between?(1, Category.all.count)
      #   select_pattern_by_category
      else
        "Your selection was incorrect, please type list to see the categories or exit to exit the program."
        menu
      end

    end
  end#ofmenu

  def select_pattern_by_category
    selected_category = Category.find(@input)
    puts "#{selected_category.name}:"

    selected_category.patterns.each_with_index do |pattern, index|
      puts ""

      if index.between?(0,8)
         spacer= " "
      else
        spacer = ""
      end

      puts "#{spacer}#{index+1}.   #{pattern.title}   #{pattern.price}"
    end
  end

end#ofclass












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

# end#of class
