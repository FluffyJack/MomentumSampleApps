class PostDetailController < Momentum::ViewController
  attr_accessor :post

  def setup
    self.title = post.title
    self.stylesheet.data = { title: post.title, content: post.content }
  end
end