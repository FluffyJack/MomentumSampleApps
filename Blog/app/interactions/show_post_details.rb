class ShowPostDetails
  def initialize(post)
    @vc = PostDetailController.new
    @vc.post = post
  end

  def run
    NavigationManager.navigate_to(@vc)
  end
end