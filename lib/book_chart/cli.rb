#Our CLI Controller

class BookChart::CLI

    def call 
        puts "\nThank you for visiting Book Charts!\n"
        list_categories
        get_all_books
        get_user_input_category
    end

    @@categories = ["Most Read Fiction", "Most Read Nonfiction"]    
    def list_categories
        puts "\nToday's Book Charts:\n"
        @@categories.each.with_index(1) do |c, i|
            puts "#{i}. #{c}"
        end
        puts "\nEnter the number of the book chart you would like to see.\n"
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
        else 
            puts "Oops! Looks like you typed an invalid selection. Please try again"
            get_user_input_category
        end
    end

    def goodbye 
        puts "Thanks for using Book Charts! Come back soon for more good reads."
    end
    
    def get_all_books
        @books = BookChart::Book.all
        @nfbooks = BookChart::NonfictionBook.all
    end

    def list_fiction_books
        puts "\n\nHere are the top 20 Most Read Fiction books this week:\n\n"
        @books.each.with_index(1) do |b, i|
            puts "--------------------------------------"
            puts "#{i}. #{b.title}"
            puts "--------------------------------------"
       end
       get_user_input_book

    end

    def list_nonfiction_books
        puts "\n\nHere are the top 20 Most Read Nonfiction books this week:\n\n"
        @nfbooks.each.with_index(1) do |b, i|
            puts "--------------------------------------"
            puts "#{i}. #{b.title}"
            puts "--------------------------------------"
       end
       get_user_input_nfbook
    end

    def get_user_input_nfbook
            puts "Please select which book you would like more information on:"
            chosen_book = gets.strip.to_i 
        if chosen_book > 0 && chosen_book <=20 
            chosen_book_index = (chosen_book-1)
            details = @nfbooks[chosen_book_index]
            puts "-----------------------------------"
            puts "Title: #{details.title}"
            puts "Author: #{details.author}"
            puts "Weeks on list: #{details.wol}"
            puts ""
            puts "ABOUT THE BOOK: 
            #{details.about}"
            puts ""
            puts "READ A SAMPLE HERE:
            #{details.sample}"
            puts "-----------------------------------"
        else 
            puts "Oops! Looks like you typed an invalid selection. Please try again"
            get_user_input_nfbook
        end
        see_more_books
    end 
  
    def get_user_input_book
        puts "Please select which book you would like more information on:"
        chosen_book = gets.strip.to_i
        if chosen_book > 0 && chosen_book <=20 
            chosen_book_index = (chosen_book-1)
            details = @books[chosen_book_index]
            puts "\nHere is more information about the book you requested!\n"
            puts "-----------------------------------"
            puts "Title: #{details.title}"
            puts "Author: #{details.author}"
            puts "Weeks on list: #{details.wol}"
            puts ""
            puts "ABOUT THE BOOK: 
            #{details.about}"
            puts ""
            puts "READ A SAMPLE HERE:
            #{details.sample}"
            puts "-----------------------------------"
        else 
            puts "Oops! Looks like you typed an invalid selection. Please try again"
            get_user_input_book
        end
        see_more_books
    end 
 
    def see_more_books
        puts "Would you like to see more books? 1.YES, 2.NO"
        input = gets.strip
        case input 
        when "1"
            call
        when "2"
            goodbye
        else
            puts "Oops! Looks like you typed an invalid selection. Please try again"
            see_more_books
        end
    end
end
