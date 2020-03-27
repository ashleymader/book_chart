class BookChart::Book 
    attr_accessor :title, :author, :wol, :ranking, :category, :url
    @@all = [] 

    def initialize(title, author, wol, ranking, category)
        @title = title 
        @author = author 
        @wol = wol 
        @ranking = ranking 
        @category = category
        @url = url 
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def save
        @@all << self
    end
    

end

# What is a book? 

# A book has a title
# A book has author 
# A book has Weeks on the list
# A book has a ranking on list
# A book has a ???fiction/nonfiction???, 
# A book has a URL 

# next level deeper >> 
# A book has a description
# A book has a length of pages
# A book has a date of publication
# A book has a price

# ??about the author??