#Our CLI Controller

class BookChart::CLI

    def call 
        puts "Today's Book Charts"
        list_charts
    end

    def list_charts
        puts "Most Read or Most Sold"
    end
end 