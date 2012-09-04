class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds) #create a UIWindow instance with the dimensions of the screen
    @window.makeKeyAndVisible #tells the OS that this window will be the one receiving touch events and that it should become visible on the screen

    # Chap 5 - Tables
    controller = TapController.alloc.initWithNibName nil, bundle: nil
    nav_controller = UINavigationController.alloc.initWithRootViewController controller
    alphabet_controller = AlphabetController.alloc.initWithNibName nil, bundle: nil
    alphabet_controller.title = "Alphabet"

    # Instantiate a TabBarController and add it as the rootViewController of UIWindow instance
    tab_controller = UITabBarController.alloc.initWithNibName nil, bundle: nil
    #tab_controller.viewControllers = [alphabet_controller, nav_controller] # add nav_controller as a children controller
    #@window.rootViewController = tab_controller

    # Make another tab by creating an empty UIViewController with a different background color in AppDelegate
    other_controller = UIViewController.alloc.initWithNibName nil, bundle: nil
    other_controller.title = "Other"
    other_controller.view.backgroundColor = UIColor.purpleColor

    tab_controller = UITabBarController.alloc.initWithNibName nil, bundle: nil
    tab_controller.viewControllers = [alphabet_controller, nav_controller, other_controller]
    @window.rootViewController = tab_controller

    true
  end
end
