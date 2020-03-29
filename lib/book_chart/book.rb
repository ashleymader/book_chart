class BookChart::Book
    attr_accessor :title, :author, :wol, :urlink
    @@all = [] 

    def initialize
        @@all << self 
    end

    def self.all 
        @@all
    end
    
    # def add_deeper_book_info
end


# next level deeper >> 
# A book has a description
# A book has a length of pages
# A book has a date of publication
# A book has a price