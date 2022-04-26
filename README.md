# XYUIKit-Swift for Swift

[![CI Status](https://img.shields.io/travis/CoderXXY/XYUIKit-Swift.svg?style=flat)](https://travis-ci.org/CoderXXY/XYUIKit-Swift)
[![Version](https://img.shields.io/cocoapods/v/XYUIKit-Swift.svg?style=flat)](https://cocoapods.org/pods/XYUIKit-Swift)
[![License](https://img.shields.io/cocoapods/l/XYUIKit-Swift.svg?style=flat)](https://cocoapods.org/pods/XYUIKit-Swift)
[![Platform](https://img.shields.io/cocoapods/p/XYUIKit-Swift.svg?style=flat)](https://cocoapods.org/pods/XYUIKit-Swift)

## A part of API for XYUIKit-Swift 
##String
```
/// Calculate size based on the contents of the string
### public static func getStringSize(string:String) -> CGSize {}
### public static func getStringSize(string:String, fontValue:CGFloat = 15.0) -> CGSize{}
/// Calculate size based on the contents of the string
### public static func stringSize(string:String) -> CGSize {}
### public static func stringSize(string:String, fontValue:CGFloat = 15.0, weight:CGFloat = 0.0) -> CGSize {}

```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        UIColor.xy.hexStringToColor(hexString: String, alpha: CGFloat)
//        XYUILable.init(frame: CGRect)
//        var lable:XYUILable = XYUILable.init(frame: CGRect, title: String?, bgColor: UIColor?, fontValue: CGFloat?, textColor: UIColor?)
//        UIColor.xy.titaniumColor
//        UIColor.xy.hexStringToColor(hexString: String)
//        String.xy.getStringSize(string: String)
//        String.xy.getStringSize(string: String, fontValue: CGFloat)
//        String.xy.stringSize(string: String)
//        String.xy.stringSize(string: String, fontValue: CGFloat, weight: CGFloat)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


```

## Requirements

```
s.ios.deployment_target = '9.0'

```

## Installation

XYUIKit-Swift is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'XYUIKit-Swift'
```

## Author

coderXXY, coderxxy@163.com

## License

XYUIKit-Swift is available under the MIT license. See the LICENSE file for more info.
