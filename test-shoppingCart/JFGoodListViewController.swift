//
//  JFGoodListViewController.swift
//  test-shoppingCart
//
//  Created by jeffrey dinh on 7/24/16.
//  Copyright © 2016 sara and jeff. All rights reserved.
//

import UIKit

let SCREEN_WIDTH = UIScreen.mainScreen().bounds.size.width
let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
class JFGoodListViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    struct Storyboard {
        static let GoodListCell = "goodListCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension JFGoodListViewController: UITableViewDataSource, UITableViewDelegate {
    
    // 第section组有多少个cell,我们这里一共就一组。所以直接返回模型数组的长度
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1//goodArray.count
    }
    
    // 创建每个cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // 从缓存池创建cell，如果没有从缓存池创建成功就根据注册的cell重用标识符创建一个新的cell
        let cell = tableView.dequeueReusableCellWithIdentifier(Storyboard.GoodListCell, forIndexPath: indexPath) //as! JFGoodListCell
        
//        //        // 取消选中效果
//        cell.selectionStyle = UITableViewCellSelectionStyle.None
//        //
//        //        // 为cell传递数据
//        cell.goodModel = goodArray[indexPath.row]
//        //
//        //        // 指定代理
//        cell.delegate = self
        
        // 返回创建好的cell
        return cell
    }
}
