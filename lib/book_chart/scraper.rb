

class BookChart::Scraper 

    def self.get_fiction_book_info
        site = "https://www.amazon.com/charts/"
        doc = Nokogiri::HTML(open(site))
        binding.pry
        book_cards = doc.css("div.kc-body .kc-rank-card-metadata")
            book_cards.each do |book| 
            title = book.css(".kc-rank-card-title").text.strip
            author =  book.css(".kc-rank-card-author").text.strip
            wol = book.css(".kc-wol").text.strip
            # ranking =  book.css(".kc-rank-card-rank").text.strip
            # category = book.css(".kc-sublist-label").text.strip
            url =  book.css("a.kc-cover-link.app-specific-display.not_app").attr("href")
            BookChart::Book.new(title, author, wol, url)
        end
    end
end


    