//
//  BYNavigationVC.swift
//  BYSwiftTool
//
//  Created by bys on 2021/5/28.
//

import UIKit

class BYNavigationVC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.backgroundColor = WHITE_COLOR()
//        navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "tabBarItem0"), style: .plain, target: self, action: #selector(back))
        
        // Do any additional setup after loading the view.
    }
    
//    @objc func back(){
//        popViewController(animated: true)
//    }

    

}
