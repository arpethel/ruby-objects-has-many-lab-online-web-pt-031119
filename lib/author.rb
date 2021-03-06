require 'pry'

class Author
  attr_accessor :name, :title

  @@post_count = 0

  def initialize(name)
    @name = name
    @stories = []
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end

  def stories
    @stories
  end
end
