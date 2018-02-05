class CommandLineInterface

  def start
    puts "Fetching data.."

    sweater = Category.new("Sweaters", Scraper.sweater_scraper)
    hat = Category.new("Hats", Scraper.hat_scraper)
    scarf = Category.new("Scarves", Scraper.scarves_scraper)
    cardigan = Category.new("Cardigans", Scraper.cardigans_scraper)

    @input = nil
    puts ""
    puts ""
    puts "♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥"
    puts "╔════════════════════════════════╗"
    puts "      Patterns for knitters"
    puts "╚════════════════════════════════╝"
    puts "♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥  ♥‿♥"
    puts ""
    menu
  end

  def menu

    while @input != "exit"

    puts ""
    puts "Enter the number of pattern category to see a list of available patterns, or type exit."
    puts "(If a pattern is free, no price is displayed.)"
    puts ""
    puts ""
    puts "1.   Sweaters"
    puts "2.   Hats"
    puts "3.   Scarves"
    puts "4.   Cardigans"

    @input = gets.strip

      if [1,2,3,4].include?(@input.to_i)
        select_pattern_by_category

      elsif @input.downcase == "list"
        menu

      elsif @input.downcase == "exit"
        exit

      else
        "Your selection was incorrect, please type list to see the categories or exit to exit the program."
        menu
      end

    end
  end

  def select_pattern_by_category
    selected_category = Category.find(@input)
    puts "#{selected_category.name}:"

    selected_category.patterns.each_with_index do |pattern, index|
      puts ""

      if index.between?(0,8)
        spacer = " "
      else
        spacer = ""
      end

      puts "#{spacer}#{index+1}.   #{pattern.name}  #{pattern.price}"
    end
  end

end
