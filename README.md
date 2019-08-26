
![Imgur](https://i.imgur.com/BMK01oH.png)


# FlowInject

[![Language](https://img.shields.io/badge/swift-3.0--5.0-yellow)](https://cocoapods.org/pods/FlowInject)
[![Version](https://img.shields.io/cocoapods/v/FlowInject.svg?style=flat)](https://cocoapods.org/pods/FlowInject)
[![License](https://img.shields.io/badge/license-MIT-blueviolet)](https://cocoapods.org/pods/FlowInject)
[![Platform](https://img.shields.io/cocoapods/p/FlowInject.svg?style=flat)](https://cocoapods.org/pods/FlowInject)


A library of Coordinator Patterns that are easy to use for dependency injections in applications written on pure Swift for iOS.
Coordinator pattern This is an easy way to inject a presenter (UINavigationController) into each Navigator, rather than a complex child structure like other open sources.

</br>

## 🛠 Installation

FlowInject is available through [CocoaPods](https://cocoapods.org/pods/FlowInject). To install
it, simply add the following line to your Podfile:

```ruby
pod 'FlowInject'
```

</br>

## 🚢 Usage

### Using FlowInject from App Launch
To use Navigator from the launch of the app, make sure to create the app’s window programmatically in `AppDelegate.swift`
Then, set the Navigator as the root of the window’s view hierarchy in the `AppDelegate.didFinishLaunching`.
```swift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
      
      self.window = UIWindow(frame: UIScreen.main.bounds)
      let appNavigator = AppNavigator(in: self.window)

        return true
    }

}
```




</br>

## 📦 Example app
To get more information about FlowInject, Check out the example project

</br>

## 👤 Author
seungjin, seungjin429@gmail.com

</br>

## 📄 License

FlowInject is available under the MIT license. See the LICENSE file for more info.
