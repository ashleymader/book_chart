

class BookChart::Scraper 

    def self.get_page_fiction
        site = "https://www.amazon.com/charts/"
        doc = Nokogiri::HTML(open(site))
    end

    def self.get_book_meta
        get_page_fiction.css("div.kc-rank-card")
    end

    def self.get_fiction_book_info
            get_book_meta.each do |b| 
            book = BookChart::Book.new
            book.title = b.css(".kc-rank-card-title").text.strip
            book.author =  b.css(".kc-rank-card-author").text.strip.gsub("by ", "")
            book.wol = b.css(".kc-wol").text.strip
            book.about = b.css(".kc-data-story-text-container p").text.strip
            book.sample = b.css(".circle-icon.read").attr("href")
        end
    end

    def self.get_page_nonfiction
        site = "https://www.amazon.com/charts/mostread/nonfiction"
        doc = Nokogiri::HTML(open(site))
    end

    def self.get_book_meta_nf
        get_page_nonfiction.css("div.kc-rank-card")
    end

    def self.get_nonfiction_book_info
        get_book_meta_nf.each do |b| 
        book = BookChart::NonfictionBook.new
        book.title = b.css(".kc-rank-card-title").text.strip
        book.author =  b.css(".kc-rank-card-author").text.strip.gsub("by ", "")
        book.wol = b.css(".kc-wol").text.strip
        book.about = b.css(".kc-data-story-text-container p").text.strip
        book.sample = b.css(".circle-icon.read").attr("href")
        end
    end
end


    