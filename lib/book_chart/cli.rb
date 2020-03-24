#Our CLI Controller

class BookChart::CLI

    def call 
        welcome
        list_charts
        menu
        goodbye
    end

    def welcome
        puts "Thank you for visiting Book Charts! We gather the top 20 most read and most sold book of the past week. "
    end
    def list_charts
        puts "Today's Book Charts:"
        puts "1.Most Read 
2.Most Sold"
    end

    def menu 
        puts "Enter the number of the book chart you would like to see, back to go back, or type exit"
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            case input 
            when "1"
                puts "More info on Most Read..."
                puts "Type 'back' to get to the main menu"
            when "2"
                puts "More info on Most Sold..."
                puts "Type 'back' to get to the main menu"
            when "back"
                list_charts
            else 
                puts "Oops! Looks like you typed something wrong. Please try again"
            end
        end
    end

    def goodbye 
        puts "Thanks for using Book Charts! Come back soon for more good reads."
    end

    
end 