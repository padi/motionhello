class TapController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    @label = UILabel.alloc.initWithFrame CGRectZero # create a UILabel instance with frame CGRectZero (probably with 0 length and width?)
    @label.text = "Taps" # add text with UILabel instance
    @label.sizeToFit # change size to the point that the text can fit perfectly

    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2) # put at the center of the UIWindow
    self.view.addSubview @label
  end

  # UIViewController#viewDidLoad - one of those `lifecycle` methods of UIViewController
end
