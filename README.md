# XYUIKit-Swift for Swift

[![CI Status](https://img.shields.io/travis/CoderXXY/XYUIKit-Swift.svg?style=flat)](https://travis-ci.org/CoderXXY/XYUIKit-Swift)
[![Version](https://img.shields.io/cocoapods/v/XYUIKit-Swift.svg?style=flat)](https://cocoapods.org/pods/XYUIKit-Swift)
[![License](https://img.shields.io/cocoapods/l/XYUIKit-Swift.svg?style=flat)](https://cocoapods.org/pods/XYUIKit-Swift)
[![Platform](https://img.shields.io/cocoapods/p/XYUIKit-Swift.svg?style=flat)](https://cocoapods.org/pods/XYUIKit-Swift)

## A part of API for XYUIKit-Swift 

## StringExtension
```swift
/// Calculate size based on the contents of the string
 public static func getStringSize(string:String) -> CGSize {}
 public static func getStringSize(string:String, fontValue:CGFloat = 15.0) -> CGSize{}
/// Calculate size based on the contents of the string
 public static func stringSize(string:String) -> CGSize {}
 public static func stringSize(string:String, fontValue:CGFloat = 15.0, weight:CGFloat = 0.0) -> CGSize {}
```
## UIColorExtension
```swift
public static func hexStringToColor(hexString:String) -> UIColor{}
public static func hexStringToColor(hexString:String, alpha:CGFloat = 1.0) -> UIColor{}
public static func hexIntToColor(hexInt:Int) -> UIColor{}
public static func hexIntToColor(hexInt:Int, alpha:CGFloat = 1.0) -> UIColor{}
```
***部分个性化颜色***
```
/** 钛白色 */
titaniumColor
/** 亮白 */
lightWhiteColor
/** 皇家蓝 */
royalBlueColor
/** 背景占位色 */
backgroundPlaceholderColor
/** 字体灰 */
fontGrayColor
```
## XYUIKit
```swift
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
* Installation with CocoaPods：`pod 'XYUIKit-Swift'`
* Installation with [Carthage](https://github.com/Carthage/Carthage)：`github "CoderXXY/XYUIKit-Swift"`
* Manual import：
    * Import the main file：`#import "XYUIKit_Swift"`

```swift
import XYUIKit_Swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /** the label UI-control of XYUILable, it extends UIControl,and you can add target for label */
        let lable:XYUILable = XYUILable.init(frame: CGRect(x: 100, y: 50, width: view.bounds.size.width/3, height: 30), title: "XYUILable-01", bgColor: UIColor.xy.royalBlueColor, fontValue: 20, textColor: UIColor.xy.titaniumColor)
        lable.textAlignment = .center
        lable.addTarget(self, action: #selector(labelHandle), for: .touchUpInside)
        view.addSubview(lable)
        /** the label UI-control of XYUIKit */
        let lable01 = XYUIKit.label(bgColor: UIColor.xy.hexStringToColor(hexString: "#AE0000"), title: "XYUILable-02", titleColor: UIColor.xy.titaniumColor, font: UIFont.xy.font(size: 20, weight: 0.2), textAlignment: .center)
        /** you can get the size with stringSize, but you must set the font-value and font-weight is the same of  lable01, example the fontValue is 20,and the font-weight is 0.2. */
        let lable01Size:CGSize = String.xy.stringSize(string: "XYUILable-02", fontValue: 20, weight: 0.2)
        lable01.frame = CGRect(x: 100, y: 50+lable01Size.height+10, width: lable01Size.width+0.5, height: lable01Size.height)
        view.addSubview(lable01)
    }
    /** the objc action */
    @objc func labelHandle() {
        print("the action of XYUILable-01")
    }
}
```
![WechatIMG26](https://user-images.githubusercontent.com/16486815/165531602-0e47d219-2d0b-461a-b535-f2916d6140f4.png)

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
