# XYUIKit-Swift for Swift

[![CI Status](https://img.shields.io/travis/CoderXXY/XYUIKit-Swift.svg?style=flat)](https://travis-ci.org/CoderXXY/XYUIKit-Swift)
[![Version](https://img.shields.io/cocoapods/v/XYUIKit-Swift.svg?style=flat)](https://cocoapods.org/pods/XYUIKit-Swift)
[![License](https://img.shields.io/cocoapods/l/XYUIKit-Swift.svg?style=flat)](https://cocoapods.org/pods/XYUIKit-Swift)
[![Platform](https://img.shields.io/cocoapods/p/XYUIKit-Swift.svg?style=flat)](https://cocoapods.org/pods/XYUIKit-Swift)

## A part of API for XYUIKit-Swift 

## StringExtension
```
/// Calculate size based on the contents of the string
 public static func getStringSize(string:String) -> CGSize {}
 public static func getStringSize(string:String, fontValue:CGFloat = 15.0) -> CGSize{}
/// Calculate size based on the contents of the string
 public static func stringSize(string:String) -> CGSize {}
 public static func stringSize(string:String, fontValue:CGFloat = 15.0, weight:CGFloat = 0.0) -> CGSize {}
```
## UIColorExtension
```
public static func hexStringToColor(hexString:String) -> UIColor{}
public static func hexStringToColor(hexString:String, alpha:CGFloat = 1.0) -> UIColor{}
public static func hexIntToColor(hexInt:Int) -> UIColor{}
public static func hexIntToColor(hexInt:Int, alpha:CGFloat = 1.0) -> UIColor{}

/** 钛白色 */
public static var titaniumColor:UIColor?{}
/** 亮白 */
public static var lightWhiteColor:UIColor?{}
/** 皇家蓝 */
public static var royalBlueColor:UIColor?{}
/** 背景占位色 */
public static var backgroundPlaceholderColor:UIColor?{}
/** 字体灰 */
public static var fontGrayColor:UIColor?{}
...
```
## XYUIKit
```
public static func button(bgColor:UIColor?,
                                title:String?,
                                titleColor:UIColor?,
                                font:UIFont?,
                                norImg:UIImage?,
                                cornerRadius:CGFloat) -> UIButton {}
 public static func label(bgColor:UIColor?,
                               title:String?,
                               titleColor:UIColor?,
                               font:UIFont?,
                               textAlignment:NSTextAlignment?) -> UILabel{}
                               
 public static func view(bgColor:UIColor?) -> UIView {}                              
 public static func textfiled(title:String, keyboardType:UIKeyboardType) -> UITextField {}
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
