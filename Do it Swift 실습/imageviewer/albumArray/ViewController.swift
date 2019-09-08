//
//  ViewController.swift
//  albumArray
//
//  Created by 홍승보 on 08/09/2019.
//  Copyright © 2019 Seung-Bo Hong. All rights reserved.
//

import UIKit

var numImage = 0;

class ViewController: UIViewController {
    
    var imageName = [ "01.png", "02.png", "03.png" ]
    
    @IBOutlet var imgLabel: UILabel!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    @IBAction func nextImage(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage>=imageName.count) {
            numImage = 0
    }
        imgView.image = UIImage(named:imageName[numImage])
    }
        
    @IBAction func beforeImage(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage<0) {
            numImage = imageName.count-1
        }
        
        imgView.image = UIImage(named:imageName[numImage])
        }
}

