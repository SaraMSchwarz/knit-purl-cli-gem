#this is the CLI controller
class KnitPurl::CLI

  def call
    puts "Patterns for knitters:"
    list_patterns
    menu
    goodbye
  end

  def list_patterns
    puts "Enter the number of category you want more info on or type list to get the categories or type exit"
    puts "1. Accessories"
    puts "2. Blankets"
    puts "3. Garments"
    puts "4. Housewares"
    @patterns = KnitPurl::Patterns.knitting
    # @patterns.each.with_index(1) do |pattern,i|
    #   puts "#{i}. #{pattern.name} - #{pattern.price} - #{pattern.brand} - #{pattern.url}"
    end
  end


  def menu
    input = nil
    while input != "exit"



      input = gets.strip.downcase

      if input.to_i > 0
        puts @patterns[input.to_i-1]
      elsif input == "list"
        list_patterns
      else
        puts "Your selection was incorrect, please type list or exit."
      end
  end#end of menu


  def goodbye
    puts "Come back later to look for new patters!"
  end#end of goodbye

end#end of class
