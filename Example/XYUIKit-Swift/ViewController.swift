//
//  ViewController.swift
//  XYUIKit-Swift
//
//  Created by JasonDraem on 04/25/2022.
//  Copyright (c) 2022 JasonDraem. All rights reserved.
//

import UIKit
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
    
    @objc func labelHandle() {
        print("the action of XYUILable-01")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

