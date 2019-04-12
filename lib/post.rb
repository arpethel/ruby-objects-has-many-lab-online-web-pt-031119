require 'pry'

class Post
  attr_accessor :title, :author, :name

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    # binding.pry
    author.name if author
  end

  def self.all
    @@all
  end

end
