class Author

    @@all = []
 
    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def books 
        # Step 1: select all contributions for this author
        my_contributions = Contribution.all.select do | contribution |
            self == contribution.author
        end

        # Step 2: turn the array of contributions into an array of books
        my_contributions.map do | contribution |
            contribution.book
        end
    end

    def write_book(title:, word_count:)
        new_book = Book.new(title: title, word_count: word_count )
        Contribution.new(book: new_book, author: self )
        new_book
    end

end
