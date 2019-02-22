require 'pry'

class Author
  attr_accessor :name, :posts

  @@all_posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def author_name
    @name
  end

  def add_post(post)
    post.author = self

  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@all_posts << post
  end

  def add_post_by_title (name)
    add_post(Post.new(name))
  end

  def self.post_count
    @@all_posts.length
  end
end
