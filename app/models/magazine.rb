class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    
    @@all << self

  end

  def self.all
    @@all
  end
  
  def contributors
    # filters from articles 
  end


end
# magazine1 = Magazine.new("Unbowed","Historical book")
# magazine1.name
# magazine1.category