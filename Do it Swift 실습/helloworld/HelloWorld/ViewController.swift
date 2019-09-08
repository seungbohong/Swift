//
//  ViewController.swift
//  HelloWorld
//
//  Created by 홍승보 on 08/09/2019.
//  Copyright © 2019 Seung-Bo Hong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

