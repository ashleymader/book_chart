#Our CLI Controller

class BookChart::CLI

    def call 
        welcome
        list_charts
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
    def list_charts
        puts "Today's Book Charts:"
        puts "1. Most Read Fiction" 
        puts "2. Most Read Nonfiction" 
        puts "3. Most Sold Fiction" 
        puts "4. Most Sold Nonfiction"
    end

    def menu 
        puts "Enter the number of the book chart you would like to see, 'back' to go back, or type 'exit'."
        @charts = []
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            case input 
            when "1", "one"
                puts "Type 'back' to get to the main menu"
                puts "More info on Most Read Fiction..."
            when "2", "two"
                puts "Type 'back' to get to the main menu"
                puts "More info on Most Read Nonfiction..."
            when "3", "three"
                puts "Type 'back' to get to the main menu"
                puts "More info on Most Sold Fiction..."
            when "4", "four"
                puts "Type 'back' to get to the main menu"
                puts "More info on Most Read Nonfiction..."
            when "back"
                list_charts
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

    
end 