class AppDelegate # responsible for controlling your application, is it like a 'controller'?
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    alert = UIAlertView.new
    alert.message = "Hello World! This is my first app in RubyMotion! Woohoo!"
    alert.show
    true
  end
end
