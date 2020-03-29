class BookChart::NonfictionBook
    attr_accessor :title, :author, :wol, :urlink
    @@all = [] 

    def initialize
        @@all << self 
    end

    def self.all 
        @@all
    end

    
end