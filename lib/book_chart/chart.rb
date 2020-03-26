class BookChart::Chart 
    attr_accessor :books, :author, :title, :weeks_on_list, :ranking_on_list, :avg_review
    @@all = [] 



    def self.mrnf 
        most_read_nf = self.new 
        most_read_nf.name = "Most Read Nonfiction"
        most_read_nf
    end
end