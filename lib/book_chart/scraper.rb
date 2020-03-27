

class BookChart::Scraper 

    def self.get_book_info
        site = "https://www.amazon.com/charts/"
        doc = Nokogiri::HTML(open(site))
        book_cards = doc.css("div.kc-horizontal-rank-card")
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
        book_cards = doc.css("div.kc-horizontal-rank-card")

        book_cards.each do |t|
            title = t.css(".kc-rank-card-title").text
            BookChart::Chart.new
        end

    end
    
end


    