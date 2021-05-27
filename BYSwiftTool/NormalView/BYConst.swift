//
//  BYConst.swift
//  BYSwiftTool
//
//  Created by bys on 2021/5/27.
//

import UIKit
import Foundation



// MARK: -高度相关
//屏幕宽高
let KScreenHeight = UIScreen.main.bounds.size.height
let kScreenWidth = UIScreen.main.bounds.size.width

///适配iPhoneX导航栏高度，88
let KSafeAreaTopHeight = UIApplication.shared.statusBarFrame.size.height + 44.0
/// tabbar高度
let KTabbarHeight = UIApplication.shared.statusBarFrame.size.height > 20.0 ? 83.0 : 49.0
/// 适配iPhoneX底部距离，34
let SafeAreaBottomHeight = isNotchScreen() ? 34 : 0



// MARK: -字体
func Medium_FONT(_ font:CGFloat) -> UIFont {
    return UIFont.init(name: "PingFangSC-Medium", size: font)!
}

func Regular_FONT(_ font:CGFloat) -> UIFont {
    return UIFont.init(name: "PingFangSC-Regular", size: font)!
}

func Light_FONT(_ font:CGFloat) -> UIFont {
    return UIFont.init(name: "PingFangSC-Light", size: font)!
}

func Semibold_FONT(_ font:CGFloat) -> UIFont {
    return UIFont.init(name: "PingFangSC-Semibold", size: font)!
}




// MARK: -颜色色值
let White_Color = isDark() ? UIColor.white : UIColor.red

////白色
func WHITE_COLOR() -> UIColor {
    var color = UIColor.white
    if #available(iOS 13.0, *) {
        color = UIColor.init(dynamicProvider: { (traitCollection) -> UIColor in
            if isDark() {
                if traitCollection.userInterfaceStyle == .dark {
                    return UIColor.black
                }
            }
            return UIColor.white
        })
    }
    return color
}














///宽度适配
func W(_ w:CGFloat) -> CGFloat {
    if UIDevice.current.userInterfaceIdiom == .pad {
        return w
    }
    return (KScreenHeight / 375.0 * w)
}
func H(_ h:CGFloat) -> CGFloat {
    if UIDevice.current.userInterfaceIdiom == .pad {
        return h
    }
    return (kScreenWidth / 667.0 * h)
}



/// 判断刘海屏，返回true表示是刘海屏
func isNotchScreen() -> Bool {
    if UIDevice.current.userInterfaceIdiom == .pad {
        return false
    }
    if #available(iOS 11.0, *) {
        guard let height = UIApplication.shared.windows.first?.safeAreaInsets.bottom else { return false }
        return height > 0
    }
    return false
}

/// 是否是暗黑模式
/// - Returns: 返回Bool类型
func isDark() -> Bool {
    if #available(iOS 13.0, *) {
        if UITraitCollection.current.userInterfaceStyle == .dark {
            return true
        }
    }
    return false
}
