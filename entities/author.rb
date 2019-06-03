# frozen_string_literal: true

class Author
  attr_reader :name, :bio

  def initialize(name, bio = '')
    @name = name
    @bio = bio
  end

  def to_s
    name
  end
end
