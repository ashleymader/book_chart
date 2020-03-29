#Our CLI Controller

class BookChart::CLI

    def call 
        puts "\nThank you for visiting Book Charts!\n"
        get_all_books
        list_categories
        get_user_input_category
        get_book_details
        
        
        #gets user input 
        #scrape info from next page
        #display info to user
    end

    
    def list_categories
        puts "\nToday's Book Charts:\n"
        puts "\n1. Most Read Fiction\n" 
        puts "2. Most Read Nonfiction" 
        puts "\nEnter the number of the book chart you would like to see, 'back' to go back, or type 'exit'.\n"
    end

    def get_user_input_category
        chosen_category = gets.strip
        show_books_for(chosen_category) 
        @input = chosen_category
    end 

    def show_books_for(chosen_category)
        case chosen_category 
        when "1"
            list_fiction_books
        when "2"
            list_nonfiction_books
        when "back"
            list_categories
        when "exit"
            goodbye
        else 
            puts "Oops! Looks like you typed an invalid selection. Please try again"
        end
        
    end

    def goodbye 
        puts "Thanks for using Book Charts! Come back soon for more good reads."
    end
    
    def get_all_books
        BookChart::Scraper.get_fiction_book_info if BookChart::Book.all.empty?
        @books = BookChart::Book.all
        BookChart::Scraper.get_nonfiction_book_info if BookChart::NonfictionBook.all.empty?
        @nfbooks = BookChart::NonfictionBook.all
    end

    def list_fiction_books
        puts "\n\nHere are the top 20 Most Read Fiction books this week:\n\n"
        @books.each.with_index(1) do |b, i|
            puts "--------------------------------------"
            puts "#{i}. #{b.title}"
            puts "--------------------------------------"
       end
       puts "\nPlease choose a book you would like more details on:\n"
    end

    def list_nonfiction_books
        puts "\n\nHere are the top 20 Most Read Fiction books this week:\n\n"
        @nfbooks.each.with_index(1) do |b, i|
            puts "#{i}. #{b.title}"
       end
       puts "\nPlease choose a book you would like more details on:\n"
       get_book_details
    end

    def get_book_details 
    book_index = gets.strip.to_i
    @nfbooks.each.with_index(1) do |b, i|
        puts "-----------------------------------"
        puts "#{i}. #{b.title}"
        puts "Author: #{b.author}"
        puts "Weeks on list: #{b.wol}"
        puts "Click to see more info: www.amazon.com#{b.urlink}"
        puts "-----------------------------------"
        end
    end
end
