//
//  Extensions.swift
//  easylogin
//
//  Created by 홍승보 on 14/09/2019.
//  Copyright © 2019 Seung-Bo Hong. All rights reserved.
//

import UIKit

extension UIViewController {
    class func displaySpinner(onView : UIView) -> UIView {
    let spinnerView = UIView.init(frame: onView.bounds)
    spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(style: .whiteLarge)
    ai.startAnimating()
    ai.center = spinnerView.center
    
    DispatchQueue.main.async {
    spinnerView.addSubview(ai)
    onView.addSubview(spinnerView)
    }
    
    return spinnerView
    }
    
    class func removeSpinner(spinner :UIView) {
    DispatchQueue.main.async {
    spinner.removeFromSuperview()
    }
    }
}
