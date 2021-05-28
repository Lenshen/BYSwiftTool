//
//  BYBaseTableViewVC.swift
//  BYSwiftTool
//
//  Created by bys on 2021/5/28.
//

import UIKit
import MJRefresh

enum MJRefreshType {
    case head,foot,headFoot,none
}

class BYBaseTableViewVC: BYBaseVC {
    var pageIdx = 1
    var pageSize = 20
    var refreshType : MJRefreshType!{
        didSet{
            if refreshType == .head || refreshType == .headFoot{
                tableView.mj_header = MJRefreshStateHeader(refreshingBlock: {[weak self] in
                    self!.reloadData()
                })
            }
            if refreshType == .foot || refreshType == .headFoot{
                tableView.mj_footer = MJRefreshBackGifFooter(refreshingBlock: {[weak self] in
                    self!.moreData()
                })
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.frame = view.frame
        tableView.mj_y = KSafeAreaTopHeight
        tableView.mj_h = KScreenHeight - KSafeAreaTopHeight - CGFloat(KTabbarHeight)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        refreshType = .headFoot
    }
    
    lazy var tableView: UITableView = {
        let t = UITableView.init(frame: CGRect.zero, style: .grouped)
        t.rowHeight = 44
        return t
    }()
    
    //下拉刷新
    func reloadData(){
        pageIdx = 1
        getData()
    }
    //上拉加载更多
    func moreData(){
        pageIdx += 1
        getData()
    }
    //获取数据
    func getData(){
        
    }
}

extension BYBaseTableViewVC: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let v = UIView()
        v.backgroundColor = BackGroundColor
        return v
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let v = UIView()
        v.backgroundColor = BackGroundColor
        return v
    }
}
