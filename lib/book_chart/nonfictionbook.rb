class BookChart::NonfictionBook
    attr_accessor :title, :author, :wol, :about, :sample
    @@all = [] 

    def initialize
        @@all << self 
    end

    def self.all 
        BookChart::Scraper.get_nonfiction_book_info if @@all.empty?
        @@all
    end
end