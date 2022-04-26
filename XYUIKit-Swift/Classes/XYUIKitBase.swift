//
//  XYUIKitBase.swift
//  XYUIKit-Swift
//
//  Created by 许须耀 on 2022/4/25.
//

import Foundation

/** Prefixes the control */
public struct XYUIKitBase<Base> {
    /** propertes list */
    var base:Base
    /** initialize  method */
    init(_ base:Base) {
        self.base = base
    }
}
 
public protocol XYCompatible {}
extension XYCompatible{
    /** Member attribute */
    public var xy:XYUIKitBase<Self>{
        set{}
        get{ XYUIKitBase(self) }
    }
    /** Class attribute */
    public static var xy:XYUIKitBase<Self>.Type{
        set{}
        get{ XYUIKitBase<Self>.self }
    }
    /** instance  method */
    /** class method */
}


// 给CGRect扩展方法
extension CGRect:XYCompatible{}
extension XYUIKitBase where Base == CGRect{
    // 添加计算属性
    internal static var cgRectZero:CGRect {
        return CGRect(origin: CGPoint.zero, size: CGSize.zero)
    }
}
// UIFont
extension UIFont:XYCompatible{}
extension XYUIKitBase where Base == UIFont{
    // size
    internal static func font(size:CGFloat) -> UIFont {
        return font(size: size, weight: 0.0)
    }
    // size weight
    internal static func font(size:CGFloat, weight:CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight(rawValue: weight))
    }
}
