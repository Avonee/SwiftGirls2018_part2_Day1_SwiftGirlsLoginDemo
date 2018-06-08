//
//  ViewController.swift
//  SwiftGirls_LoginDemo_20180609
//
//  Created by 鄭雅方 on 2018/5/26.
//  Copyright © 2018年 鄭雅方. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoShow: UIImageView!
    
    @IBOutlet weak var accountInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var messageShow: UILabel!
    
    @IBAction func loginButton(_ sender: Any) {
        
        if (accountInput.text == "Avon") && (passwordInput.text == "1234"){
            messageShow.text = "Scussess!!!"
        }else{
            messageShow.text = "Error!!!"
        }
    }
    
    // 設置圖片矩陣
    var imgeArray:[UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 補充：gif動畫
        // for-in loop 把全部圖片放到array內
        for x in 0...2{
            imgeArray.append(UIImage(named:"gif_\(x)")!)
        }
        // 要顯示的動畫圖片是圖片矩陣
        logoShow.animationImages = imgeArray
        // 動畫時長
        logoShow.animationDuration = 0.5
        // 動畫開始
        logoShow.startAnimating()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

