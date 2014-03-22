class NavigationManager

  class << self
    def shared
      Dispatch.once { @shared = new }
      @shared
    end

    def navigation_controller=(navigation_controller)
      shared.navigation_controller = navigation_controller
    end

    def navigate_to(vc)
      shared.navigate_to(vc)
    end
  end

  attr_accessor :navigation_controller

  def navigate_to(vc)
    navigation_controller.pushViewController(vc, animated:true)
  end

end