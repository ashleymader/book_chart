class BookChart::Chart 
    attr_accessor :title
    @@all = []

    def inititialize(title)
        @title = title 
        @@all<<self
    end

    def self.all 
        BookChart::Scraper.chart_list if !@@all.empty?
        binding.pry
    end

    
end