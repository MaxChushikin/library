# frozen_string_literal: true

module GeneratorHelpers
  SEED = './generator/seed.yaml'
  STORE = './generator/save.yaml'

  def self.load_library(path)
    Psych.safe_load(
      File.read(path.empty? ? SEED : path),
      [Symbol, Library, Author, Book, Order, Reader, Date],
      [],
      true
    )
  end

  def save_library(library, path)
    path.empty? ? File.write(STORE, library.to_yaml) : File.write(path, library.to_yaml)
  end
end
