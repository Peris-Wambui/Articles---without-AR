class Article
    attr_reader:magazine, :title
    @@all =[]
    def initialize(author, magazine, title)
        @author =(author)
        @magazine =(magazine)
        @title =(title)
        @@all << self
    end 

    def self.all
        @@all
    end
    def author
        @author.name
    end

end
# author1 = Article.new("The Unbowed")
# magazine1 =Magazine.new("The Unbowed","Wangari Maathai")
# article1 = Article.new(author1, magazine1, "The Unbowed")
# article1.title
# Article.all
# article2=Article.new(author1, magazine1,"I love me")
# article3= Article.new(at1,mag2,"Hey")