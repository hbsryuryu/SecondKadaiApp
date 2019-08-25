//
//  Hello_ViewController.swift
//  SecondKadaiApp
//
//  Created by 濱田龍輝 on 2019/08/25.
//  Copyright © 2019 Ryuuki.hamada. All rights reserved.
//

import UIKit

class Hello_ViewController: UIViewController {
    
    var guest_name: String = "error"
    var hello_pattern_number = 3
    let hello_pattern = ["おはよう","こんにちは","こんばんは","error"]
    @IBOutlet weak var hello_message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hello_message.text = "\(hello_pattern[hello_pattern_number])、\(guest_name)さん"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
