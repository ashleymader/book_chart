class BookChart::Scraper 

    def self.get_book_info
        #site = "https://www.amazon.com/charts/"
        doc = Nokogiri::HTML(open(https://www.amazon.com/charts))
        book_cards = site.css("div.kc-horizontal-rank-card")
            book_cards.each do |book| 
            title = book.css(".kc-rank-card-title").text
            author =  book.css(".kc-rank-card-author").text
            wol = book.css(".kc-wol").text
            ranking =  book.css(".kc-rank-card-rank").text
            category = book.css(".kc-sublist-label")
            url =  book.css("a.kc-cover-link.app-specific-display.not_app").attr("href")
            BookChart::Book.new(title, author, wol, ranking, category)
        end
    end
# 
    def self.chart_list 
        site = "https://www.amazon.com/charts/"
        doc = Nokogiri::HTML(open(site))
        book_cards = site.css("div.kc-horizontal-rank-card")

        book_cards.each do |t|
            title = book.css(".kc-rank-card-title").text
            BookChart::Chart.new(title)
        end

    end
    
        # title =  .css(".kc-rank-card-title").text
        # author =  .css(".kc-rank-card-author").text
        # weeks on list = .css(".kc-wol").text
        # rank on list =  .css(".kc-rank-card-rank").text
        # link to book on amazon =  .css("a.kc-cover-link.app-specific-display.not_app").attr("href") 
end


    