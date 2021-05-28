//
//  ViewController.swift
//  BYSwiftTool
//
//  Created by bys on 2021/5/27.
//

import UIKit

class ViewController: BYBaseTableViewVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = WHITE_COLOR()

    }

    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

