//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 濱田龍輝 on 2019/08/25.
//  Copyright © 2019 Ryuuki.hamada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let menu_pattern_time = ["朝","昼","夜"]
    var menu_pattern_number = 3
    @IBOutlet weak var label_name: UILabel!
    @IBOutlet weak var label_keikoku: UILabel!
    @IBOutlet weak var name_get: UITextField!
    @IBOutlet weak var label_tuuti: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label_keikoku.text = ""
        name_get.placeholder = "例:大阪 太郎"
        if (menu_pattern_number == 3){
            menu_pattern_number = 1
            label_tuuti.text = ""
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let helloViewController:Hello_ViewController = segue.destination as! Hello_ViewController
        helloViewController.guest_name = name_get.text!
        helloViewController.hello_pattern_number = menu_pattern_number
    }

    @IBAction func button_kettei(_ sender: Any) {
        if (name_get.text! == ""){
            label_keikoku.text = "入力されていません！"
        }else if(name_get.text!.unicodeScalars.count >= 8){
            label_keikoku.text = "７文字以下で！"
        }else{
            label_keikoku.text = ""
            self.performSegue(withIdentifier: "goto_hello", sender: nil)
        }
    }

    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        menu_pattern_number = Int(arc4random_uniform(UInt32(3)))
        label_tuuti.text = "\(menu_pattern_time[menu_pattern_number])になりました。"
    }
    
}

