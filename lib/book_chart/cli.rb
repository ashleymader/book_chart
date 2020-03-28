#Our CLI Controller

class BookChart::CLI

    def call 
        puts "\nThank you for visiting Book Charts!\n"
        get_fiction_books
        list_categories

        menu
        
        #scrape after selection
        #display scrape info 
        #gets user input 
        #scrape info from next page
        #display info to user
    end

    
    def list_categories
        puts "\nToday's Book Charts:\n"
        puts "\n1. Most Read Fiction\n" 
        puts "2. Most Read Nonfiction" 
    end

    def menu
        puts "\nEnter the number of the book chart you would like to see, 'back' to go back, or type 'exit'.\n"
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            case input
            when "1", "one"
                list_fiction_books
            when "2", "two"
                puts "\nHere are the top 20 Most Read Nonfiction books this week:\n" #method that puts the chart
            when "back"
                list_categories
            when "exit"
                goodbye
            else 
                puts "Oops! Looks like you typed an invalid selection. Please try again"
            end
        end
    end

    def goodbye 
        puts "Thanks for using Book Charts! Come back soon for more good reads."
    end

    def get_fiction_books
        @books = BookChart::Book.all
    end
    def list_fiction_books
        puts "\nHere are the top 20 Most Read Fiction books this week:\n"
        @books.each.with_index(1) do |b, i|
            puts "#{i}. #{b.title} by #{b.author}"
       end
    end


end 