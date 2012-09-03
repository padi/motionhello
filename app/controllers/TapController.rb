class TapController < UIViewController
  def viewDidLoad
    super

    # Chapter 3 - Controllers
    self.view.backgroundColor = UIColor.whiteColor

    @label = UILabel.alloc.initWithFrame(CGRectZero) # create a UILabel instance with frame CGRectZero... probably with 0 length and width?
    @label.text = "Taps" # add text with UILabel instance
    @label.sizeToFit # change size to the point that the text can fit perfectly

    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2) # put at the center of the UIWindow
    self.view.addSubview @label

    # Chapter 4 - Containers
    self.title = "Tap (#{self.navigationController.viewControllers.count})"

    # target/action
    # - APIs would pass objects and the name of the function to call on that object. We `do` this operation in Ruby with blocks and lambdas.
    # - older iOS APIs can't do this like Ruby, they pass the target and name of function to be called as a callback
    rightButton = UIBarButtonItem.alloc.initWithTitle("Push", style: UIBarButtonItemStyleBordered, target:self, action:'push')
    # add (push) the rightButton as the rightBarButtonItem
    self.navigationItem.rightBarButtonItem = rightButton

    def push
      new_controller = TapController.alloc.initWithNibName(nil, bundle: nil)
      self.navigationController.pushViewController(new_controller, animated: true)
    end
  end

  # override initWithNibName
  def initWithNibName(name, bundle: bundle)
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag: 1)
    self
  end
end
