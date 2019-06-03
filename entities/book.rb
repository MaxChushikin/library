# frozen_string_literal: true

class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def to_s
    "The \"#{title}\", written by #{author}"
  end
end
