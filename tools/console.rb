require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new "Wangari Maathai"
magazine1 = Magazine.new("Unbowed","Historical book")
magazine2 = Magazine.new("Tiktok","Historical book")
magazine3 = Magazine.new("Ladies","Love")
article1 = Article.new(author1, magazine1, "The Unbowed")
article2=Article.new(author1, magazine1,"I love me")
author1.add_article(magazine1,"Here I Come")
author1.add_article(magazine2,"Hell")
author1.add_article(magazine3,"Babies")








### DO NOT REMOVE THIS
binding.pry

0
