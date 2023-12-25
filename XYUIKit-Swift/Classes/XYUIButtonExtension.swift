//
//  XYUIButtonExtension.swift
//  XYUIKit-Swift
//
//  Created by coderXY on 2023/12/25.
//

import UIKit

/*
 枚举 设置 图片的位置
 */
enum XYButtonImagePosition : Int  {
    case imageTop = 0
    case imageLeft
    case imageBottom
    case imageRight
}

//extension UIButton:XYCompatible{}
//extension XYUIKitBase where Base == UIButton{
extension UIButton {
    /**
     type ：image 的位置
     Space ：图片文字之间的间距
     */
    func xyImagePosition(type:XYButtonImagePosition,Space space:CGFloat) {

        let imageWith :CGFloat = (self.imageView?.frame.size.width)!
        let imageHeight :CGFloat = (self.imageView?.frame.size.height)!

        var labelWidth :CGFloat = 0.0
        var labelHeight :CGFloat = 0.0

        labelWidth = CGFloat(self.titleLabel!.intrinsicContentSize.width)
        labelHeight = CGFloat(self.titleLabel!.intrinsicContentSize.height)

        var  imageEdgeInsets :UIEdgeInsets = UIEdgeInsets()
        var  labelEdgeInsets :UIEdgeInsets = UIEdgeInsets()

        switch type {
        case .imageTop:
            imageEdgeInsets = UIEdgeInsets.init(top: -labelHeight - space/2.0, left: 0, bottom: 0, right:  -labelWidth)
            labelEdgeInsets =  UIEdgeInsets.init(top:0, left: -imageWith, bottom: -imageHeight-space/2.0, right: 0)
            break;
        case .imageLeft:
            imageEdgeInsets = UIEdgeInsets.init(top:0, left:-space/2.0, bottom: 0, right:space/2.0)
            labelEdgeInsets =  UIEdgeInsets.init(top:0, left:space/2.0, bottom: 0, right: -space/2.0)
            break;
        case .imageBottom:
            imageEdgeInsets = UIEdgeInsets.init(top:0, left:0, bottom: -labelHeight-space/2.0, right: -labelWidth)
            labelEdgeInsets =  UIEdgeInsets.init(top:-imageHeight-space/2.0, left:-imageWith, bottom: 0, right: 0)
            break;
        case .imageRight:
            imageEdgeInsets = UIEdgeInsets.init(top:0, left:labelWidth+space/2.0, bottom: 0, right: -labelWidth-space/2.0)
            labelEdgeInsets =  UIEdgeInsets.init(top:0, left:-imageWith-space/2.0, bottom: 0, right:imageWith+space/2.0)
            break;
        }
        self.titleEdgeInsets = labelEdgeInsets
        self.imageEdgeInsets = imageEdgeInsets
    }
}

//enum ButtonImageAndTitlePossitionStyle:Int {
//    case imageIsTop = 0
//    case imageIsLeft
//    case imgageIsBottom
//    case imageIsRight
//}
//
//extension UIButton {
//    //MARK: - 按枚举将 btn 的 image 和 title 之间位置处理
//    func buttonImageAndTitlePossitionWith(padding: CGFloat, style: ButtonImageAndTitlePossitionStyle){
//        let imageRect: CGRect = self.imageView?.frame ?? CGRect.init()
//        let titleRect: CGRect = self.titleLabel?.frame ?? CGRect.init()
//        let selfWidth: CGFloat = self.frame.size.width
//        let selfHeight: CGFloat = self.frame.size.height
//        let totalHeight = titleRect.size.height + padding + imageRect.size.height
//        switch style {
//        case .imageIsLeft:
//            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: padding / 2, bottom: 0, right: -padding / 2)
//            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: -padding / 2, bottom: 0, right: padding / 2)
//        case .imageIsRight:
//            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -(imageRect.size.width + padding/2), bottom: 0, right: (imageRect.size.width + padding/2))
//            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: (titleRect.size.width + padding / 2), bottom: 0, right: -(titleRect.size.width +  padding/2))
//        case .imageIsTop :
//            self.titleEdgeInsets = UIEdgeInsets(top: ((selfHeight - totalHeight) / 2 + imageRect.size.height + padding - titleRect.origin.y), left: (selfWidth / 2 - titleRect.origin.x - titleRect.size.width / 2) - (selfWidth - titleRect.size.width) / 2, bottom: -((selfHeight - totalHeight) / 2 + imageRect.size.height + padding - titleRect.origin.y), right: -(selfWidth / 2 - titleRect.origin.x - titleRect.size.width / 2) - (selfWidth - titleRect.size.width) / 2)
//            self.imageEdgeInsets = UIEdgeInsets(top: ((selfHeight - totalHeight) / 2 - imageRect.origin.y), left: (selfWidth / 2 - imageRect.origin.x - imageRect.size.width / 2), bottom: -((selfHeight - totalHeight) / 2 - imageRect.origin.y), right: -(selfWidth / 2 - imageRect.origin.x - imageRect.size.width / 2))
//        case .imgageIsBottom:
//            self.titleEdgeInsets = UIEdgeInsets(top: ((selfHeight - totalHeight) / 2 - titleRect.origin.y), left: (selfWidth / 2 - titleRect.origin.x - titleRect.size.width / 2) - (selfWidth - titleRect.size.width) / 2, bottom: -((selfHeight - totalHeight) / 2 - titleRect.origin.y), right: -(selfWidth/2 - titleRect.origin.x - titleRect.size.width / 2) - (selfWidth - titleRect.size.width) / 2)
//            self.imageEdgeInsets = UIEdgeInsets(top: ((selfHeight - totalHeight) / 2 + titleRect.size.height + padding - imageRect.origin.y), left: (selfWidth / 2 - imageRect.origin.x - imageRect.size.width / 2), bottom: -((selfHeight - totalHeight) / 2 + titleRect.size.height + padding - imageRect.origin.y), right: -(selfWidth / 2 - imageRect.origin.x - imageRect.size.width / 2))
//        default:
//            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        }
//    }
//}
