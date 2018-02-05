class Pattern
  attr_accessor :name, :price, :category

  @@all = []

  def initialize(category, attrb)
    attrb.each do |attrb_name, attrb_value|
      self.send("#{attrb_name}=", attrb_value)
    end
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    all.each_with_index do |pat, index|
      puts "#{index+1}.     #{pat.title name}"
    end
  end

end
