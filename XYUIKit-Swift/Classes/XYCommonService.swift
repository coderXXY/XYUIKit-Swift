//
//  XYCommonService.swift
//  XYUIKit-Swift
//
//  Created by coderXY on 2023/12/23.
//

import UIKit
/** 通用方法 */
public class XYCommonService: NSObject {
    /** debug log */
    func print(_ items: String..., filename: String = #file, function : String = #function, line: Int = #line, separator: String = " ", terminator: String = "\n") {
#if DEBUG
        let pretty = "===### \(URL(fileURLWithPath: filename).lastPathComponent) [#\(line)] \(function) ###=== \n"
        let output = items.map { "\($0)" }.joined(separator: separator)
        Swift.print(pretty+output, terminator: terminator)
#endif
    }
    /** iOS应用程序的状态 [active\inactive\background] */
    func xyApplicationState() -> UIApplication.State {
        if Thread.isMainThread {
            return UIApplication.shared.applicationState
        } else {
            var state: UIApplication.State?
            DispatchQueue.main.async {
                state = UIApplication.shared.applicationState
            }
            return state!
        }
    }
    /** width-accounding to view cout size */
    func xyScreen_width(obj:UIView) -> CGFloat {
        return obj.frame.size.width;
    }
    /** height-accounding to view cout size */
    func xyScreen_height(obj:UIView) -> CGFloat {
        return obj.frame.size.height;
    }
    /** set subview or view backgroundColor, r、g、b [0~255.0], a[0~1.0] */
    func xyBGColor(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a);
    }
}
/** (Swift) 监听应用程序前台后台及非活跃状态 */
public class AppStateManager {
    public static func xyRegisterAppStateManager() {
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIApplicationDidBecomeActive, object: nil, queue: nil, using: handleApplicationState)
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIApplicationWillResignActive, object: nil, queue: nil, using: handleApplicationState)
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIApplicationDidEnterBackground, object: nil, queue: nil, using: handleApplicationState)
    }
    // MARK: 监听通知方法
    private static func handleApplicationState(notification: Notification) {
        if let application = notification.object as? UIApplication {
            switch application.applicationState {
            case .active:
                print("state == active")
            case .inactive:
                print("state == inactive")
            case .background:
                print("state == background")
            @unknown default: break
            }
        }
    }
    private init() { }
}

// MARK: Swift版本，以下RxSwift中的方式:
/** 判断当前执行的上下文中是否存在关联key的值，该key只设定在主队列的上下文中 */
extension DispatchQueue {
    // MARK: DispatchSpecificKey: 与调度队列上的特定上下文值关联的键。
    private static var token: DispatchSpecificKey<()> = {
        let key = DispatchSpecificKey<()>()
        DispatchQueue.main.setSpecific(key: key, value: ())
        return key
    }()
    public static var xyIsMainThread: Bool {
        // getSpecific:返回当前执行的上下文关联key对应的值
        DispatchQueue.getSpecific(key: token) != nil
    }
}
