# frozen_string_literal: true

class Result
  include GeneratorGenerator

  class << self
    def return(library)
      orders(library)
      top_books(library)
      top_readers(library)
      number_of_readers(library)
    end

    def top_readers(library, quantity = 3)
      puts "Top readers\n\n"
      library.get_top_readers(quantity).each { |reader| puts reader }
      puts "\n" * 2
    end

    def orders(library)
      puts "library orders\n\n"
      puts library.orders
      puts "\n" * 2
    end

    def top_books(library, quantity = 3)
      puts "Most popular books\n\n"
      library.get_top_books(quantity).each { |book| puts book }
      puts "\n" * 2
    end

    def number_of_readers(library, quantity = 3)
      puts "number of readers top books\n\n"
      puts library.get_number_of_readers_top_books(quantity)
      puts "\n" * 2
    end
  end
end
