#this is the CLI controller
class KnitPurl::CLI

  def call
    puts "Patterns for knitters:"
    list_patterns
    menu
    goodbye
  end#end of call

  def list_patterns
    puts "Enter the number of pattern category you want more info on or type exit."
    puts "1. Sweaters" #https://www.loveknitting.com/us/knitting-patterns#?garment=1739&
    puts "2. Hats" #https://www.loveknitting.com/us/knitting-patterns#?garment=1736&
    puts "3. Scarves" #https://www.loveknitting.com/us/knitting-patterns#?garment=1741&
    end
  end#end of list_patterns


  def menu
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @patterns[input.to_i-1]
      elsif input == "list"
        list_patterns
      elsif input == "exit"
        "Come back later to look for new patters!"
      else
        puts "Your selection was incorrect, please type list to see the categories or exit to exit the program."
      end
  end#end of menu


  def goodbye
    puts "Come back later to look for new patters!"
  end#end of goodbye

end#end of class
