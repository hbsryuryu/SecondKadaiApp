//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 濱田龍輝 on 2019/08/25.
//  Copyright © 2019 Ryuuki.hamada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let pattern_time = ["朝","昼","夜"]
    var pattern_number = 1
    
    @IBOutlet weak var label_name: UILabel!
    @IBOutlet weak var label_keikoku: UILabel!
    @IBOutlet weak var name_get: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label_keikoku.text = ""
        name_get.text = "例:大阪 太郎"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let helloViewController:Hello_ViewController = segue.destination as! Hello_ViewController
        helloViewController.guest_name = name_get.text!
    }

    @IBAction func button_kettei(_ sender: Any) {
        if (name_get.text! == "" || name_get.text! == "例:大阪 太郎"){
            label_keikoku.text = "入力されていません！"
        }else{
            label_keikoku.text = ""
            self.performSegue(withIdentifier: "goto_hello", sender: nil)
        }
    }
    
    @IBAction func button_edit(_ sender: Any) {
        if (name_get.text == "例:大阪 太郎"){
            name_get.text = ""
        }
    }
    
    
}

