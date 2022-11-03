class Author
  # attr_accessor :name
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def articles
    # filter from all articles
    Article.all.select{|article|
    article.author==self}
  end

  def magazines
    # From artcles get magz instances
    articles.map{|article|article.
    magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self,magazine,title)
  end
  def topic_areas
    magazines.map{|magazine|magazine.category}.uniq
  end
end
# author1 = Author.new "Wangari Maathai"
# author1.name 
# author1.name ="Tessy"
# article1.add_article(magazine1,"Here I Come")
# author1.add_article(mag1,"Here I Come")
# author1.name
# Article.all.count
# Article.all[2].title
# author1.articles.count
# author1.topic_areas
