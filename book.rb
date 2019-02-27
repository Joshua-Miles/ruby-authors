class Book

    @@all = []

    attr_accessor :title, :word_count

    def initialize(title:, word_count:)
        self.title = title
        self.word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def authors
        # Step 1: select the contributions for this book
        my_contributions = Contribution.all.select do | contribution | 
            contribution.book == self
        end

        # Step 2: turn the array of contributions into an array of authors using map
        my_contributions.map do | contribution |
            contribution.author
        end
    end



end
