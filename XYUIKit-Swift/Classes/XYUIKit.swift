//
//  XYUIKit.swift
//  XYUIKit-Swift
//
//  Created by 许须耀 on 2022/4/26.
//

import UIKit

public class XYUIKit{
    // button parameters
    @discardableResult
    public static func button(bgColor:UIColor?,
                                title:String?,
                                titleColor:UIColor?,
                                font:UIFont?,
                                norImg:UIImage?,
                                cornerRadius:CGFloat) -> UIButton {
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.backgroundColor = bgColor!
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = font
        button.layer.cornerRadius = cornerRadius
        button.layer.masksToBounds = (cornerRadius>0 ? true:false)
        button.setImage(norImg, for: .normal)
        button.setImage(norImg, for: .highlighted)
        return button
    }
    // label
    @discardableResult
    public static func label(bgColor:UIColor?,
                               title:String?,
                               titleColor:UIColor?,
                               font:UIFont?,
                               textAlignment:NSTextAlignment?) -> UILabel {
        let label:UILabel? = UILabel.init(frame:CGRect.xy.cgRectZero)
        label?.backgroundColor = bgColor!
        label?.text = title!
        label?.textColor = titleColor
        label?.font = font!
        label?.textAlignment = textAlignment!
        return label!
    }
    // view
    @discardableResult
    public static func view(bgColor:UIColor?) -> UIView {
        let view:UIView? = UIView.init(frame: CGRect.xy.cgRectZero)
        view?.backgroundColor = bgColor!
        return view!
    }
    /// 自定义输入框
    ///  - Parameter string:字符串
    ///  - Parameter keyboardType: 键盘type
    ///  - Returns textField : UITextField
    @discardableResult
    public static func textfiled(title:String, keyboardType:UIKeyboardType) -> UITextField {
        let tf:UITextField = UITextField(frame: CGRect.xy.cgRectZero)
        tf.backgroundColor = UIColor.xy.backgroundPlaceholderColor
        tf.placeholder = title
        tf.keyboardType = keyboardType
        tf.textAlignment = NSTextAlignment.center
        return tf
    }
    // bottom
}
