class BookChart::NonfictionBook
    attr_accessor :title, :author, :wol, :urlink
    @@all = [] 

    def initialize
        @@all << self 
    end

    def self.all 
        BookChart::Scraper.get_nonfiction_book_info if @@all.empty?
        @@all
    end

    # def make_book_details
    #     @nfbooks.each.with_index(1) do |b, i|
    #             puts "-----------------------------------"
    #             puts "#{i}. #{b.title}"
    #             puts "Author: #{b.author}"
    #             puts "Weeks on list: #{b.wol}"
    #             full_url = ("www.amazon.com/charts#{b.urlink}")
    #             puts "Click to see more info: #{full_url}"
    #             puts "-----------------------------------"
    #         end
    #     end
    # end
end