class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(PostsController.new)
    
    NavigationManager.navigation_controller = @window.rootViewController

    @window.makeKeyAndVisible

    true
  end
end
