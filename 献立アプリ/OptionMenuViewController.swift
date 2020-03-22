//
//  OptionMenuViewController.swift
//  献立アプリ
//
//  Created by 丘本悠真 on 2020/02/24.
//  Copyright © 2020 yuma okamoto. All rights reserved.
//

import UIKit
 
// プロトコル（UITableViewDataSource, UITableViewDelegate）の追加
class OptionMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

       // ‥①TableViewを用意
        var optionTable: UITableView!
        let textArray1: [String] = ["献立を通知する"]
        let textArray2: [String] = ["朝ごはん","昼ごはん","晩ごはん"]
        let cellTitle:[String] = ["通知","献立を作成する時間帯"]
    
    
        override func viewDidLoad() {
           super.viewDidLoad()
    
        optionTable = UITableView(frame: self.view.frame, style: UITableView.Style.grouped) //‥②UITableを実装
            optionTable.delegate = self
            optionTable.dataSource = self
            optionTable.estimatedRowHeight = 100
            optionTable.rowHeight = UITableView.automaticDimension
            self.view.addSubview(optionTable)
            
       }
       
       //④セクション数を指定
       func numberOfSections(in tableView: UITableView) -> Int {
           return 2
       }
       //④セクションタイトルを指定
       func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return cellTitle[section]
       }
       //④セル数を指定
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0){
            return 1
        }else if (section == 1){
            return 3
        }
        return 0
       }
       //④セルを生成
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            //セルの中身を設定
            let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle,reuseIdentifier: "aaa\(indexPath.section)-\(indexPath.row)")
            //Switchボタンを配置
            if cell.accessoryView == nil {
                cell.accessoryView = UISwitch()
            }
            if (indexPath.section == 0){
                cell.textLabel?.text = "\(textArray1[indexPath.row])"
            }else if (indexPath.section == 1){
                cell.textLabel?.text = "\(textArray2[indexPath.row])"
            }
            return cell
            }
    
       override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }
   }
