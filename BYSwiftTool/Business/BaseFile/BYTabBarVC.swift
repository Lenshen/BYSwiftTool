//
//  BYTabBarVC.swift
//  BYSwiftTool
//
//  Created by bys on 2021/5/28.
//

import UIKit

class BYTabBarVC: UITabBarController {
    var vcs = [HomeVC(),BusinessVC(),MyVC()];
    var vcTitles = ["首页","业务","我的"];

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        // Do any additional setup after loading the view.
    }
    
    func setUI(){
        var nvcs = [BYNavigationVC]()
        for (idx,v) in vcs.enumerated() {
            let nav = BYNavigationVC(rootViewController: v)
            nav.tabBarItem.image = UIImage(named: "tabBarItem" + "\(idx)")
            nav.tabBarItem.selectedImage = UIImage(named: "tabBarItem" + "\(10 + idx)")
//            nav.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
            nav.tabBarItem.title = vcTitles[idx]
            nvcs.append(nav)
            viewControllers = nvcs
        }
        
    }

   

}
