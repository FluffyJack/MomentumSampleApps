class PostDetailController < Momentum::ViewController
  attr_accessor :post

  def setup
    self.title = self.post.title
    self.view.titleLabel.text = self.post.title
    self.view.contentLabel.text = self.post.content
  end
end