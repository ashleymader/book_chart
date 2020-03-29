class BookChart::Book
    attr_accessor :title, :author, :wol, :about, :sample
    @@all = [] 

    def initialize
        @@all << self 
    end

    def self.all 
        BookChart::Scraper.get_fiction_book_info if @@all.empty?
        @@all 
    end
    
end


# next level deeper >> 
# A book has a description
# A book has a length of pages
# A book has a date of publication
# A book has a price