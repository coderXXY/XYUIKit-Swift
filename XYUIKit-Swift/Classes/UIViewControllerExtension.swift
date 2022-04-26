//
//  UIViewControllerExtension.swift
//  XYUIKit-Swift
//
//  Created by 许须耀 on 2022/4/25.
//

import UIKit

private var hideKeyboardWhenTappedAroundKey:uint = 0
private var tapGestureKey:uint = 0

extension UIViewController {
    var hideKeyboardWhenTappedAround: Bool {
        get { (objc_getAssociatedObject(self, &hideKeyboardWhenTappedAroundKey) as? Bool) ?? false }
        set {
            objc_setAssociatedObject(self, &hideKeyboardWhenTappedAroundKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
            if newValue {
                if tapGesture == nil {
                    tapGesture = UITapGestureRecognizer(target: self, action: #selector(hiddenKeyBoard))
                    view.addGestureRecognizer(tapGesture!)
                }
            } else {
                if let tapGesture = tapGesture {
                    view.removeGestureRecognizer(tapGesture)
                    self.tapGesture = nil
                }
            }
        }
    }
    private var tapGesture: UITapGestureRecognizer? {
        get { objc_getAssociatedObject(self, &tapGestureKey) as? UITapGestureRecognizer }
        set { objc_setAssociatedObject(self, &tapGestureKey, newValue, .OBJC_ASSOCIATION_RETAIN) }
    }
    @objc private func hiddenKeyBoard() {
        view.endEditing(true)
    }
}

