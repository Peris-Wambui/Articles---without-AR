class Author
  # attr_accessor :name
  attr_reader :name


  def initialize(name)
    @name = name
  
  end


end
# author1 = Author.new "Wangari Maathai"
# author1.name 
# author1.name ="Tessy"
