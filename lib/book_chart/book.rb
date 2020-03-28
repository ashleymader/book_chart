class BookChart::Book
    attr_accessor :title, :author, :wol, :url
    @@all = [] 

    def initialize(title, author, wol, url)
        @title = title 
        @author = author 
        @wol = wol 
        @url = url
        @@all << self 
    end

    def self.all 
        @@all 
    end

#    def self.fiction_books
#         self.scrape_fiction_books
#    end

#    def self.scrape_fiction_books
#         books = []
#         books << self.scrape_fiction 
#         books
#    end

#    def self.scrape_fiction
#     site = "https://www.amazon.com/charts/"
#     doc = Nokogiri::HTML(open(site))
#     book_cards = doc.css("div.kc-body .kc-rank-card-metadata")
#         book_cards.each do |book| 
#         title = book.css(".kc-rank-card-title").text.strip
#         author =  book.css(".kc-rank-card-author").text.strip
        
#         wol = book.css(".kc-wol").text.strip
#         # ranking =  book.css(".kc-rank-card-rank").text.strip
#         # category = book.css(".kc-sublist-label").text.strip
#         url =  book.css("a.kc-cover-link.app-specific-display.not_app").attr("href")
        
#     end
#    end



    #RETURN LIST OF BOOKS WITH AUTHORS AND TITLE

end

# What is a book? 

# A book has a title
# A book has author 
# A book has Weeks on the list
# A book has a ranking on list
# A book has a ???fiction/nonfiction???, 
# A book has a URL 

# next level deeper >> 
# A book has a description
# A book has a length of pages
# A book has a date of publication
# A book has a price

# ??about the author??