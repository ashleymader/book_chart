#Our CLI Controller

class BookChart::CLI

    def call 
        welcome
        menu
        #scrape after selection
        #display scrape info 
        #gets user input 
        #scrape info from next page
        #display info to user
    end

    def welcome
        puts "\nThank you for visiting Book Charts!\n"
    end


    def menu 
        puts "\nToday's Book Charts:\n"
        puts "\n1. Most Read Fiction\n" 
        puts "2. Most Read Nonfiction" 
        puts "\nEnter the number of the book chart you would like to see, 'back' to go back, or type 'exit'.\n"
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            case input 
            when "1", "one"
                puts "Here are the top 20 Most Read Nonfiction books this week:"
                most_read_fiction
            when "2", "two"
                puts "\nHere are the top 20 Most Read Nonfiction books this week:\n"
                most_read_nonfiction
            when "back"
                menu
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

    def most_read_fiction
        puts "\nIf you would like more information on a book, enter the number 1-20\n"
        puts "the info scraped from original page"
        book_selection = gets.strip #if valid?
    end
    
    def most_read_nonfiction
        puts "\nIf you would like more information on a book, enter the number 1-20\n"
        puts "the info scraped from original page"
        book_selection = gets.strip.to_i if valid?
    end

    def valid?(input)
        input <= data.length && input >0
    end
end 