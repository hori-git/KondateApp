//
//  ConfirmKondateViewController.swift
//  献立アプリ
//
//  Created by 丘本悠真 on 2020/02/24.
//  Copyright © 2020 yuma okamoto. All rights reserved.
//

import UIKit

class ConfirmKondateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ナビゲーションコントローラーをオレンジ背景に
        self.navigationController?.navigationBar.barTintColor = UIColor.orange
        
        //Backボタンを非表示に
        self.navigationItem.hidesBackButton = true
    }


    //Top画面に戻る

    @IBAction func topButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
