class Scraper 

    def get_most_sold_f
        site = "https://www.amazon.com/charts/2020-03-22/mostread/fiction?ref=chrt_bk_dx_intra_fc_rd"
        doc = Nokogiri::HTML(open(site))
        @most_sold_f = doc.css("div.kc-header .kc-navigation a").attr("href")
       
    end
    
    def get_most_sold_nf 
        site = "https://www.amazon.com/charts/2020-03-22/mostsold/fiction?ref=chrt_bk_dx_intra_sd_fc"
        doc = Nokogiri::HTML(open(site))
        @most_sold_nf = doc.css("div.sntra-page-content .kc-sublist a").attr("href") 
    end

    def get_most_read_f
        site = "https://www.amazon.com/charts/2020-03-22/mostread/fiction?ref=chrt_bk_dx_intra_fc_rd"
        doc = Nokogiri::HTML(open(site))
        @most_read_f = doc.css("div.sntra-page-content a").attr("href")
    end

    def get_most_read_nf
        site = "https://www.amazon.com/charts/2020-03-22/mostread/fiction?ref=chrt_bk_dx_intra_fc_rd"
        doc = Nokogiri::HTML(open(site))
        @most_read_nf = doc.css("div.sntra-page-content .kc-sublist a").attr("href")
    end

    def list_charts

    end

    def self.get_mr_nf
      
    end

    def self.get_mr_f

    end

    def self.get_ms_f

    end

    def self.get_ms_nf

    end
end

# MOST SOLD CSS -- doc.css("div.kc-header .kc-navigation a").attr("href")
# 

        # title = # puts thing.css(".kc-rank-card-title").text
        # author =  # puts thing.css(".kc-rank-card-author").text
        # weeks on list # puts thing.css(".kc-wol").text
        # rank on list =  # puts thing.css(".kc-rank-card-rank").text
        # link to book on amazon =  #puts thing.css("a.kc-cover-link.app-specific-display.not_app").attr("href") 