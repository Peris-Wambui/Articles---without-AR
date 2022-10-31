class Article
    attr_reader :author, :magazine, :title
    def initialize(author, magazine, title)
        @author =(author)
        @magazine =(magazine)
        @title =(title)
    end


end
# author1 = Article.new("The Unbowed")
# magazine1 =Magazine.new("The Unbowed","Wangari Maathai")
# article1 = Article.new(author1, magazine1, "The Unbowed")