class Author

  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts=(mess)
      self.posts << mess
  end

  def add_post(post)
    self.posts << post
    post.author = self

  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    self.add_post(post)
  end

  def self.post_count
    return Post.all.size
  end


end
