# frozen_string_literal: true

module GeneratorGenerator
  class << self
    def generate_authors(quantity = 5)
      quantity.times.map { Author.new(FFaker::Name.name, 'Biography') }
    end

    def generate_books(authors, quantity = 30)
      quantity.times.map { Book.new(FFaker::Book.title, authors.sample) }
    end

    def generate_readers(quantity = 30)
      quantity.times.map do
        name = FFaker::Name.name
        email = FFaker::Internet.email
        city = FFaker::Address.city
        street = FFaker::Address.street_name
        house = rand(1...100)
        Reader.new(name, email, city, street, house)
      end
    end

    def generate_orders(books, readers, quantity = 100)
      quantity.times.map do
        book = books.sample
        reader = readers.sample
        Order.new(book, reader)
      end
    end

    def generate_library
      authors = generate_authors
      books = generate_books(authors)
      readers = generate_readers
      orders = generate_orders(books, readers)
      Library.new(authors: authors, books: books, readers: readers, orders: orders)
    end
  end
end
