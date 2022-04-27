//
//  StringExtension.swift
//  XYUIKit-Swift
//
//  Created by 许须耀 on 2022/4/25.
//

import UIKit
/** add prehix, xy */
extension String:XYCompatible{}
extension XYUIKitBase where Base == String{
    /// Calculate size based on the contents of the string
    /// - Parameter string: string content
    /// - Parameter fontValue: string font-value,if you putin font-value is zero, default is 15.0
    /// - Returns: the size of current content
    @discardableResult
    public static func getStringSize(string:String, fontValue:CGFloat = 15.0) -> CGSize {
        let str = string as NSString
        var strSize:CGSize = CGSize(width: 0.0, height: 0.0)
        if str.length <= 0 { return strSize }
        let size:CGSize = CGSize.init(width: CGFloat(MAXFLOAT), height: CGFloat(MAXFLOAT))
        let attributes = [NSAttributedString.Key.font:UIFont.systemFont(ofSize:fontValue)];
        let rect:CGRect = str.boundingRect(with: size, options: [.usesLineFragmentOrigin], attributes: attributes, context: nil)
        strSize = rect.size
        return strSize
    }
    /// Calculate size based on the contents of the string
    /// - Parameter string: string
    /// - Parameter fontValue: font-value
    /// - Parameter weight: font-weight（0.0 - 1.0）
    /// - Returns: the size of current content
    @discardableResult
    public static func stringSize(string:String, fontValue:CGFloat = 15.0, weight:CGFloat = 0.0) -> CGSize {
//        var tempFontValue:CGFloat?
//        var tempWight:CGFloat?
//        /** font */
//        if fontValue <= 0.0 {
//            tempFontValue = 15.0
//        }
//        /** weight  */
//        if weight <= 0.0 {
//            tempWight = 0.0
//        }else if weight >= 1.0 {
//            tempWight = 1.0
//        }
        let str = string as NSString
        /** if content is empty or nil, will return CGZero */
        var strSize:CGSize = CGSize(width: 0, height: 0)
        if str.length <= 0{ return strSize }
        let size:CGSize = CGSize.init(width: CGFloat(MAXFLOAT), height: CGFloat(MAXFLOAT))
        let attributes = [NSAttributedString.Key.font:UIFont.systemFont(ofSize: fontValue, weight: UIFont.Weight(rawValue: weight))];
        let rect:CGRect = str.boundingRect(with: size, options: [NSStringDrawingOptions.usesLineFragmentOrigin], attributes: attributes, context: nil)
        strSize = rect.size
        return strSize
    }
}
