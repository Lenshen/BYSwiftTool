//
//  BYBaseVC.swift
//  BYSwiftTool
//
//  Created by bys on 2021/5/28.
//

import UIKit

class BYBaseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = WHITE_COLOR()
        // Do any additional setup after loading the view.
        navigationController?.delegate = self
        
   
    
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "navi_back"), style: .plain, target: self, action: #selector(back))
        self.navigationController?.navigationBar.tintColor = UIColor.black
    }
    
    @objc func back(){
        self.navigationController?.popViewController(animated: true)
    }


}


extension BYBaseVC : UINavigationControllerDelegate{
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        
        if navigationController.viewControllers.count == 1 && (viewController.isKind(of: HomeVC.classForCoder()) || viewController.isKind(of: BusinessVC.classForCoder()) || viewController.isKind(of: MyVC.classForCoder())) {
            navigationController.setNavigationBarHidden(true, animated: true)
        }else {
            navigationController.setNavigationBarHidden(false, animated: true)
        }
    }
}
