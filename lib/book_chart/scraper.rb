

class BookChart::Scraper 

    def self.get_page
        site = "https://www.amazon.com/charts/"
        doc = Nokogiri::HTML(open(site))
    end

    def self.get_book_meta
        get_page.css("div.kc-rank-card")
    end

    def self.get_fiction_book_info
            get_book_meta.each do |b| 
            book = BookChart::Book.new
            book.title = b.css(".kc-rank-card-title").text.strip
            book.author =  b.css(".kc-rank-card-author").text.strip
            book.wol = b.css(".kc-wol").text.strip
            book.urlink =  b.css("a.kc-cover-link.app-specific-display.not_app").attr("href")
            end
    end
end


    