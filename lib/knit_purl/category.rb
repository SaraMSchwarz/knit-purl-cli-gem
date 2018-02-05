class Category
  attr_accessor :name, :patterns
  @@all = []

  def self.find(id)
    @@all[id.to_i-1]
  end

  def initialize(name, patterns_array)
    @name = name
    @patterns = patterns_array.collect do |pattern_attrb|
      Pattern.new(self, pattern_attrb)
    end

    @@all << self
  end

  def find_pattern(id)
    self.patterns[id.to_i-1]
  end

  def self.all
    @@all
  end

  def self.print_all
    all.each_with_index do |category, index|
      puts "#{index+1}.  #{pattern.name}"
    end
  end
end
