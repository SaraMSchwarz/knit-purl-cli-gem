#this is the CLI controller
class KnitPurl::CLI

  def call
    list_patterns
    menu
    goodbye
  end

  def list_patterns
    puts "Patterns for knitters:"
    @patterns = KnitPurl::Patterns.knitting
    @patterns.each.with_index(1) do |pattern,i|
      puts "#{i}. #{pattern.name} - #{pattern.price} - #{pattern.brand} - #{pattern.url}"
    end
  end


  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of category you want more info or type list to get the categories or type exit"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @patterns[input.to_i-1]
      elsif input == "list"
        list_patterns
      else
        puts "not sure what you want, type list or exit"
      end
    end
  end

  def goodbye
    puts "Come back later to see new patters"
  end

end
end
