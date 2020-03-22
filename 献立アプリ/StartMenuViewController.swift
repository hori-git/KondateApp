//
//  StartMenuViewController.swift
//  献立アプリ
//
//  Created by 丘本悠真 on 2020/02/16.
//  Copyright © 2020 yuma okamoto. All rights reserved.
//

import UIKit

class StartMenuViewController: UIViewController {

    @IBOutlet weak var startImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //ナビゲーションコントローラーをオレンジ背景に
        self.navigationController?.navigationBar.barTintColor = UIColor.orange
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        let backButtonItem = UIBarButtonItem(title: "戻る", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backButtonItem
        
        startImage.image = UIImage(named:"gohanmorisugi")
        
    }
    

    
    //スタート画面に表示する画像（背景）
//    @IBOutlet weak var startBackgroundImage: UIImageView!
    
    //１週間の献立を決定　ボタン
    //献立新規作成画面(NewKondateViewController)に遷移
    @IBAction func thinKondateBottun(_ sender: Any) {
        performSegue(withIdentifier: "toNewKondate", sender: nil)
    }
    //現在の献立を見る　ボタン
    //現在の献立画面(KondateViewController)に遷移
    @IBAction func showKondateBottun(_ sender: Any) {
        
        
        
        performSegue(withIdentifier: "toKondate", sender: nil)
    }
    
    //設定画面(OptionMenuViewController)に遷移
    @IBAction func optionButton(_ sender: Any) {
        performSegue(withIdentifier: "toOptionMenu", sender: nil)
    }
}


