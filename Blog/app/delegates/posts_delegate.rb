class PostsDelegate < Momentum::Delegate

  def tableView(tableView, numberOfRowsInSection:section)
    data[:posts].count
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    CellFactory.post_cell(tableView, data[:posts][indexPath.row])
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated:true)
    ShowPostDetails.new(data[:posts][indexPath.row]).run
  end
end