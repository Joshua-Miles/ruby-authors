require 'pry'
require_relative './book'
require_relative './author'
require_relative './contribution'


jrr = Author.new
stephen_king = Author.new

jrr.write_book(title: "Lord of The Rings", word_count: 1000000)
stephen_king.write_book(title: 'The Shining', word_count: 10000)

lord_of_the_shining = Book.new(title: "The Lord of the Shining", word_count: 1000000000)
Contribution.new( author: stephen_king, book: lord_of_the_shining)
Contribution.new( author: jrr, book: lord_of_the_shining)


# lord_of_the_rings = Book.new(title: "Lord of The Rings", word_count: 1000000, author: jrr)
# hobbit = Book.new(title: "The Hobbit", word_count: 1000, author: jrr)

# stephen_king = Author.new
# the_shining = Book.new(title: 'The Shining', word_count: 10000, author: stephen_king)

binding.pry


