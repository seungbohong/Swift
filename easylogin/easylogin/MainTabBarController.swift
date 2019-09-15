//
//  MainTabBarController.swift
//  easylogin
//
//  Created by 홍승보 on 15/09/2019.
//  Copyright © 2019 Seung-Bo Hong. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController , UITabBarControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        guard let viewController = self.viewControllers?[self.selectedIndex] as? UINavigationController else { return }
        viewController.popToRootViewController(animated: false)
    }

}
