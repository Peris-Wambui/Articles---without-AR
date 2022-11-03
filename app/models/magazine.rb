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
  # A help method
  def article_titles
   articles = Article.all.filter{|article|article.magazine==self}
   articles.map{|article|article.title}
  end
  
  def contributors
    # filters from articles 
    magazine_articles.map{|article|article.author}.uniq
  end

  def self.find_by_name(name)
    magazine = self.all.find{|magazine|magazine.name==name} 
    # magazine.name
  end

  # def articles
  #   Article.all.select{|article|article.magazine==self}
  # end

  # def self.article_titles
  #   Article.all.select{|article|article.magazine==self}
  #   # .map{|article|article.title}
  # end


  def contributing_authors
    # tally authors and filter author with more than one
    # magazine_articles.filter
    articles = Article.all.filter{|article|article.magazine==self}
    authors= articles.map do |article|
      if article.author.articles.length > 2
        article.author
      end
    end.uniq 
  end

end
# magazine1 = Magazine.new("Unbowed","Historical book")
# magazine1.name
# magazine1.category
# magazine2 = Magazine.new("Mag2","Cat1")
# magazine1.contributors
# magazine1.article_titles
# Magazine.all