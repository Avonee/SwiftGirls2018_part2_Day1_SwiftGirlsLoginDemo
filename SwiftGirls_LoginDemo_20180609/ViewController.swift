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
        
        // 補充：passwordInput 不可為空值
        // passwordInput.text"?" 問是否存在, 如果不存在, 也就沒有isEmpty這個東西,
        // 所以 "??" 是問"??"前面是否有值, 如果沒有, 就用"??"後面的值 "true", 條件成立, 就會印出錯誤訊息
        // 但如果passwordInput.text有值, 而且 isEmpty 是 true, 代表空字串, 就會印出錯誤訊息
        if (passwordInput.text?.isEmpty ?? true){
            print("password is empty!!!")
        }
        
         // password 不可為 nil，但是有""代表是空字串，而不是nil，所以以下3種寫法也無法抓到無填寫的狀況
//         法ㄧ：
//         guard (passwordInput.text != nil) else{
//                    print("error")
//                    return
//         }
        
        // 法二：
//        guard let password = passwordInput.text else {
//            print("error")
//            return
//        }
        
//        print(password)
        
        // 法三：
//        if passwordInput.text == nil{
//            print("error")
//        }
        
        
        // &&, "與"的意思, 前後兩者同時成立才可以
        // ||, "或"的意思, 前後任一個成立就可以
        if (accountInput.text == "Avon") && (passwordInput.text == "1234"){
            messageShow.text = "Scussess!!!"
            
            // 補充：換頁-執行換頁的方法
            performSegue(withIdentifier: "toPage2", sender: self)
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
    
    // 補充：換頁的方法（方法 ＝ function = method ）
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPage2"{
        let vc = segue.destination as! MainViewController
        }
    }


}

