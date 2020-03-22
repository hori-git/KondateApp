//
//  NewKondateViewController.swift
//  献立アプリ
//
//  Created by 丘本悠真 on 2020/02/22.
//  Copyright © 2020 yuma okamoto. All rights reserved.
//

import UIKit

class NewKondateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ナビゲーションコントローラーをオレンジ背景に
        self.navigationController?.navigationBar.barTintColor = UIColor.orange
    }
    
    @IBAction func deciKondateBottun(_ sender: Any) {
        performSegue(withIdentifier: "toConfirmKondate", sender: nil)
    }
    
    //Githubテスト用
}
