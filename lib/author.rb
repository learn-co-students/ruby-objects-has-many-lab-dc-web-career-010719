
class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_name)
    post_name.author=(self)
    self.posts << post_name
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    post.author = self
    self.posts << post
  end

  def self.post_count
    Post.all.count
  end
end
