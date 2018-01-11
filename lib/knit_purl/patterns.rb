class KnitPurl::Patterns

  def self.all
    #It should return a bunch of instances of Patterns

    puts <<-DOC.gsub /^\s*/, ''
      1. Sweaters
      2. Scarves
    DOC

  end
end
