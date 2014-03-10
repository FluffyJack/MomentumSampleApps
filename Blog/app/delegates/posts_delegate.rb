class PostsDelegate < Momentum::Delegate

  def tableView(tableView, numberOfRowsInSection:section)
    self.data[:posts].count
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    @reuseIdentifier ||= "PostCell"

    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
    end

    cell.textLabel.text = self.data[:posts][indexPath.row].title

    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    vc = PostDetailController.new
    vc.post = self.data[:posts][indexPath.row]
    tableView.deselectRowAtIndexPath(indexPath, animated:true)
    tableView.window.rootViewController.pushViewController(vc, animated:true)
  end
end