How to build CLI Gem 

1. Plan your gem, imagine your interface 
2. Start withthe project structure - google 
3. Start with the entry point - the file run 
4. Force that to build the CLI interface
5. Stub out the interface 
6. Start making things real 
7. Discover objects
8. Program 


- A command line interface for top book charts with Amazon 

user types ./bin/book-charts
APP FLOW
1. Show a choice of Books
2. User selects one of the above 
3. Scraper returns the books in that category and displays title, author, weeks on list. 
  3a. user needs to be able to go back or exit
4. User can then select to get more details on a particular book 
5. Returns to the user the description, pages in book, publication date, price ???maybe a link to buy??? 
  5a. user needs to be able to go back one menu, go back to main menu, or exit. 
DO I WANT TO ADD AN ABOUT THE AUTHOR SECTION? 

What is a book? 

A book has a title
A book has author 
A book has Weeks on the list
A book has a ranking on list
A book has a ???fiction/nonfiction???, 
A book has a URL 

next level deeper >> 
A book has a description
A book has a length of pages
A book has a date of publication
A book has a price

??about the author??



FOR WHEN I WANT BUILD IT OUT TO SCRAPE ALL THE BOOKS ON ALL CHARTS
  class BookChart::Scraper 

    def scrape_me(status, type)
        url_status = set_url_status(status)
        url_type = set_url_type(type)
        site = "https://www.amazon.com/charts/2020-03-22/#{status}/#{type}?ref=chrt_bk_dx_intra_#{url_type}_#{url_status}"
        doc = Nokogiri::HTML(open(site))
        # most_sold_f = doc.css("div.kc-header .kc-navigation a").attr("href")
        # most_sold_nf = doc.css("div.sntra-page-content .kc-sublist a").attr("href") 
        # most_read_f = doc.css("div.sntra-page-content a").attr("href")
        # most_read_nf = doc.css("div.sntra-page-content .kc-sublist a").attr("href")
    end

    def set_url_status(status)
        status == "read" ? "rd" : "sd"
    end

    def set_url_type(type)
        type == "fiction" ? "fc" : "nf"
    end

    def status_and_type(status, type)
        if cli.menu.input == "1"
            status == "read" && type == "fiction"
        elsif cli.menu.input == "2"
            status == "read" && type == "nonfiction"
        elsif cli.menu.input == "3"
            status == "sold" && type == "fiction"
        else cli.menu.input == "4"
            status == "sold" && type == "nonfiction"
        end
    end 
    binding.pry

    def list_charts

    end


end

# MOST SOLD CSS -- doc.css("div.kc-header .kc-navigation a").attr("href")
# 

        # title =  .css(".kc-rank-card-title").text
        # author =  .css(".kc-rank-card-author").text
        # weeks on list = .css(".kc-wol").text
        # rank on list =  .css(".kc-rank-card-rank").text
        # link to book on amazon =  .css("a.kc-cover-link.app-specific-display.not_app").attr("href") 

        _____

        #