class Author

  attr_accessor :name, :title

@@all = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    @posts << new_post
  end

  def self.all
    @@all
  end

  def self.post_count
    Post.all.count
  end
  
end