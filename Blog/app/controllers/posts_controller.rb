class PostsController < Momentum::ViewController
  title "Posts"

  def setup
    delegate.data[:posts] = (1..(rand(30) + 20)).map do |n|
      Post.new.tap do |p|
        p.title = "Testing #{n}"
        p.content = "Testing Some Content #{n}\n" * 500
      end
    end
  end
end