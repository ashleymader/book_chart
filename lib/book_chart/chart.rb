class BookChart::Chart 
    attr_accessor :title
    @@all = []
    def inititialize 
        @title = title 
        chart = []
    end

    def self.all 
        BookChart::Scraper.chart_list if @@all.empty?
    end
end