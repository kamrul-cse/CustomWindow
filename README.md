# CustomWindow on iOS13+ and Xcode11+

How to use own window on later of iOS 13.0 where `UIScene` introduced.

Here we will learn how to
 + Custom Window on iOS 13+, Xcode 11+
 + Bypass the UISceneDelegate

Set own  navigation flow

See step by step in <a href="https://youtu.be/b7WE7hr0QMo">YouTube Video</a>

Screenshots:

<a href="https://youtu.be/b7WE7hr0QMo">
<img src="https://github.com/kamrul-cse/CustomWindow/blob/master/Screenshots/banner.png" width="100%" > 
</a>

Here is my `ViewController` with Custom `UIWindow` and `UINavigationController`

<a href="https://youtu.be/b7WE7hr0QMo">
<img src="https://github.com/kamrul-cse/CustomWindow/blob/master/Screenshots/output.png" width="200px" >
</a>

Here is my entire `AppDelegate` file:

```swift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        let navContoller = UINavigationController(rootViewController: viewController)
        
        window?.rootViewController = navContoller
        window?.makeKeyAndVisible()
        
        return true
    }

}
```


## Author
Md. Kamrul Hasan, mhgolap11@gmail.com

© MKHG Lab, mkhglab@gmail.com
