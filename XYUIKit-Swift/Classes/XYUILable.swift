//
//  XYUILabl.swift
//  XYUIKit-Swift
//
//  Created by 许须耀 on 2022/4/26.
//

import UIKit

public class XYUILable: UIControl {

    private var label:UILabel?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.label = UILabel(frame: self.bounds)
        self.addTarget(self, action: #selector(tapEventAction), for: .touchUpInside)
        self.addSubview(self.label!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public convenience init(frame:CGRect, title:String?, bgColor:UIColor?, fontValue:CGFloat?, textColor:UIColor?) {
        self.init(frame: frame) // 1、便捷初始化器必须从相同的类里调用另一个初始化器；2、最终调用一个指定初始化器
        self.label?.text = title ?? nil
        self.label?.backgroundColor = bgColor
        self.label?.font = UIFont.systemFont(ofSize: fontValue!)
        self.label?.textColor = textColor
    }
    
    @objc func tapEventAction() {
        print("tapEventAction")
    }
    
////    // MARK: 存储属性
    private var _title:String?
    private var _bgColor:UIColor?
    private var _fontValue:CGFloat?
    private var _textColor:UIColor?
}

extension XYUILable{
//    // MARK: 添加计算属性
    var title:String?{
        set{
            _title = newValue
            self.label?.text = _title
        }
        get{ return _title }
    }
    var bgColor: UIColor? {
        get { _bgColor }
        set {
            _bgColor = newValue
            label?.backgroundColor = _bgColor
        }
    }
    var fontValue: CGFloat? {
        get { _fontValue }
        set {
            _fontValue = newValue
            label?.font = UIFont.systemFont(ofSize: _fontValue!, weight: UIFont.Weight.init(rawValue: 0))
        }
    }
    var textColor: UIColor? {
        get { _textColor }
        set {
            _textColor = newValue
            label?.textColor = _textColor
        }
    }

}
