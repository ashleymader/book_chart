class BookChart::Scraper 



    def get_page
        site = "https://www.amazon.com/charts/"
        doc = Nokogiri::HTML(open(site))
    end

    def get_book_cards 
        self.get_page.css("div.kc-horizontal-rank-card")
    end

    # def list_book
    #     self.get_book_cards.each_with_index do |title, index|
    #         book = Book.new 
    #         book.title = .css(".kc-rank-card-title").text
            
    #     end
    # end
end
# 

        # title =  .css(".kc-rank-card-title").text
        # author =  .css(".kc-rank-card-author").text
        # weeks on list = .css(".kc-wol").text
        # rank on list =  .css(".kc-rank-card-rank").text
        # link to book on amazon =  .css("a.kc-cover-link.app-specific-display.not_app").attr("href") 

        _____

    