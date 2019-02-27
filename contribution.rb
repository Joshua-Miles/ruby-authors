class Contribution

    @@all = []

    attr_accessor :book, :author

    def initialize(book:, author:)
        self.book = book
        self.author = author
        @@all << self
    end

    def self.all 
        @@all
    end

end