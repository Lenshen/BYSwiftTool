//
//  HomeVC.swift
//  BYSwiftTool
//
//  Created by bys on 2021/5/28.
//

import UIKit

class HomeVC: BYBaseTableViewVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "家"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.navigationController?.pushViewController(BusinessVC(), animated: true)
    }
}
