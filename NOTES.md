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

user types book-charts

Show a choice of Most Read or Most Sold 


user types 1 or 2

Shows the list of books 



What is a book? 

A book has a title
A book has author 
A book has Weeks on the list
A book has a ???fiction/nonfiction???, 
A book has a URL 
A book has a description
A book has a length of pages
A book has a date of publication
A book has a price
A book has a URL to purchase? 


??about the author??



scraper notes 
  title = # puts thing.css(".kc-rank-card-title").text
  author =  # puts thing.css(".kc-rank-card-author").text
  weeks on list # puts thing.css(".kc-wol").text
  rank on list =  # puts thing.css(".kc-rank-card-rank").text
  link to book on amazon =  #puts thing.css("a.kc-cover-link.app-specific-display.not_app").attr("href") <<< need to look into this. loading out of order>>>