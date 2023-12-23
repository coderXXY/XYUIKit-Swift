//
//  XYDeviceExtension.swift
//  XYUIKit-Swift
//
//  Created by coderXY on 2023/12/23.
//

import Foundation
public extension UIDevice{
    /** 顶部安全高度 */
    func xy_safeTopNavigationHeight() -> CGFloat {
        if #available(iOS 13.0, *) {
            let scene = UIApplication.shared.connectedScenes.first
            guard let windowScene = scene as? UIWindowScene else {return 0}
            guard let window = windowScene.windows.first else {return 0}
            return window.safeAreaInsets.top
        } else if #available(iOS 11.0, *){
            // Fallback on earlier versions
            guard let window = UIApplication.shared.windows.first else {return 0}
            return window.safeAreaInsets.top
        }
        return 0
    }
    /** 底部安全高度 */
    static func xy_safeBottomBarHeight() -> CGFloat {
        if #available(iOS 13.0, *) {
            let scene = UIApplication.shared.connectedScenes.first
            guard let windowScene = scene as? UIWindowScene else { return 0 }
            guard let window = windowScene.windows.first else { return 0 }
            return window.safeAreaInsets.bottom
        } else if #available(iOS 11.0, *) {
            guard let window = UIApplication.shared.windows.first else { return 0 }
            return window.safeAreaInsets.bottom
        }
        return 0
    }
    /** 顶部状态栏高度（包括安全区）statusBarHeight = statusHeight + xy_safeBottomBarHeight */
    static func xy_statusBarHeight() -> CGFloat {
        var statusBarHeight: CGFloat = 0
        if #available(iOS 13.0, *) {
            let scene = UIApplication.shared.connectedScenes.first
            guard let windowScene = scene as? UIWindowScene else { return 0 }
            guard let statusBarManager = windowScene.statusBarManager else { return 0 }
            statusBarHeight = statusBarManager.statusBarFrame.height
        } else {
            statusBarHeight = UIApplication.shared.statusBarFrame.height
        }
        return statusBarHeight
    }
    /** 导航栏高度 */
    static func xy_navigationBarHeight() -> CGFloat {
        return 44.0
    }
    /** 状态栏+导航栏的高度 */
    static func xy_navigationFullHeight() -> CGFloat {
        return UIDevice.xy_statusBarHeight() + UIDevice.xy_navigationBarHeight()
    }
    
    /** 底部导航栏高度 */
    static func xy_tabBarHeight() -> CGFloat {
        return 49.0
    }
    
    /** 底部导航栏高度（包括安全区） */
    static func xy_tabBarFullHeight() -> CGFloat {
        return UIDevice.xy_tabBarHeight() + UIDevice.xy_safeBottomBarHeight()
    }
    //MARK: END
}
