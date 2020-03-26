class Scraper 

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