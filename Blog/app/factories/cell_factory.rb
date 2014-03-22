class CellFactory
  def self.post_cell(table_view, post)
    create_or_dequeue_post_cell(table_view).tap do |cell|
      cell.textLabel.text = post.title
    end
  end

  private

  def self.create_or_dequeue_post_cell(table_view)
    table_view.dequeueReusableCellWithIdentifier("PostCell") || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:"PostCell")
    end
  end
end