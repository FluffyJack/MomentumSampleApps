class PostDetailStylesheet < Momentum::Stylesheet
  def root(v)
    v.backgroundColor = UIColor.whiteColor
    title_label(v.titleLabel)
    content_label(v.contentLabel)
  end

  def title_label(v)
    v.frame = [[20, 20], [280, 50]]
    v.font = UIFont.boldSystemFontOfSize(36)
    v.textAlignment = NSTextAlignmentCenter
    v.text = self.data[:title]
  end

  def content_label(v)
    v.frame = [[20, 70], [280, 300]]
    v.numberOfLines = 0
    v.text = self.data[:content]
  end
end