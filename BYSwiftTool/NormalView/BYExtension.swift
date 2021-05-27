//
//  BYLabel.swift
//  BYSwiftTool
//
//  Created by bys on 2021/5/27.
//
//jjj
import UIKit

extension UILabel {
    enum FontNameType {
        case Medium,Regular,Light,Semibold
    }
    
    convenience init(title: String,font: CGFloat,textColor: UIColor) {
        self.init()
        self.text = title
        self.font = UIFont.systemFont(ofSize: font)
        self.textColor = textColor
    }
    
    convenience init(title: String,font: CGFloat,fontType: FontNameType,textColor: UIColor) {
        self.init()
        getConfig(title: title, font: font, fontType: fontType, textColor: textColor, textAlignment: .left)
    }

    convenience init(title: String,font: CGFloat,fontType: FontNameType,textColor: UIColor,textAlignment: NSTextAlignment) {
        self.init()
        getConfig(title: title, font: font, fontType: fontType, textColor: textColor, textAlignment: textAlignment)
    }
    
    func getConfig(title: String,font: CGFloat,fontType: FontNameType,textColor: UIColor,textAlignment: NSTextAlignment) {
        self.text = title
        self.textColor = textColor
        self.textAlignment = textAlignment
        switch fontType {
        case .Medium:
            self.font = Medium_FONT(font)
            break
        case .Regular:
            self.font = Regular_FONT(font)
            break
        case .Light:
            self.font = Light_FONT(font)
            break
        case .Semibold:
            self.font = Semibold_FONT(font)
            break
        }
    }

}


extension UIButton {
    enum BtnType {
        case TextRight_ImgLeft,TextTop_ImgBtm,TextBtm_ImgTop
    }
    
    convenience init(imageName: String, title: String) {
        self.init()
        setImage(UIImage.init(named: imageName), for: .normal)
        setTitle(title, for: .normal)
    }
    
    convenience init(imageName: String, title: String,btnType:BtnType) {
        self.init()
        setImage(UIImage.init(named: imageName), for: .normal)
        setTitle(title, for: .normal)
        
        let imgSize = self.imageView!.intrinsicContentSize
        let titleSize = self.titleLabel!.intrinsicContentSize
        
        switch btnType {
        case .TextRight_ImgLeft:
            self.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: titleSize.width + 5, bottom: 0, right: -titleSize.width)
            self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -imgSize.width , bottom: 0, right: imgSize.width)
            break
        default:
            break
        }
    }
    
    convenience init(imageName_Normal_Select: (String,String), title: String) {
        self.init()
        setImage(UIImage.init(named: imageName_Normal_Select.0), for: .normal)
        setImage(UIImage.init(named: imageName_Normal_Select.1), for: .selected)
        setTitle(title, for: .normal)
    }
}
