# class BookChart::Chart 
#     attr_accessor :title, :author
#     @@all = []

#     def inititialize(title, author) 
#         @title = title 
#         @author = author
#         save
#     end

#     def self.all
#         BookChart::Scraper.title_author if @@all.empty?
#         @@all
#     end

#     def save 
#         @@all << self
#     end
# end