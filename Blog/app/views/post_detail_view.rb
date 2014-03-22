class PostDetailView < UIScrollView
  attr_accessor :titleLabel, :contentLabel

  def init
    super
    addSubview(self.titleLabel = UILabel.new)
    addSubview(self.contentLabel = UILabel.new)
    self
  end
end