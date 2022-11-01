class Author
  attr_accessor :name
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def articles
    # filter from all articles
    Article.all.filter{|article|
    article.author==@name}
  end

  def magazines
    # From artcles get magz instances
    articles.map{|article|article.
    magazine}.uniq
  end


end
# author1 = Author.new "Wangari Maathai"
# author1.name 
# author1.name ="Tessy"
