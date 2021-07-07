require_relative "../lib/post.rb"
require 'pry'

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
   new_post = Post.new(post_title)
   new_post.author = self
  end

  def posts
    Post.all.find_all do |post|
      post.author == self
    end
  end

  def self.post_count
    Post.all.count
  end
end
