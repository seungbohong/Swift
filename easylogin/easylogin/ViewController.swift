//
//  ViewController.swift
//  easylogin
//
//  Created by 홍승보 on 14/09/2019.
//  Copyright © 2019 Seung-Bo Hong. All rights reserved.
//
import Alamofire
import SwiftyJSON
import UIKit


class ViewController: UIViewController {
    // 로그인 화면에서의 text field 정의
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var defineUser: UISegmentedControl!
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func tapSignInButton(_ sender: UIButton) {
        // id, password가 현재 사용자가 아니라면 return
        guard let email = emailTextField.text, !(emailTextField.text?.isEmpty)! else { return }
        guard let password = passwordTextField.text, !(passwordTextField.text?.isEmpty)! else { return }
        
        // 로그인 시에 뷰 전환
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: "mainscreen") as! ViewController
        
        //let mainscreen = MainTabBarController()
        let urlLis = "http://localhost:3000"
        
        let parameter: Parameters = [
            "email" : email,
            "password" : password
        ]
 
        // 로그인 시에 email와 password를 POST해준다.
        Alamofire.request("http://localhost:3000/auth/signin", method: .post, parameters: parameter, encoding: JSONEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .responseJSON { response in
                
                switch response.result {
                case .success(let data):
                    print("is: \(data)")
                    self.navigationController?.pushViewController(resultViewController, animated: true)
                    
                case .failure(let error):
                    let alertView = UIAlertController(title: "Error", message: "Your Message", preferredStyle: .alert)
                    alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    self.present(alertView, animated: false, completion: nil)
                    print("need text")
                    print("Request failed with error: \(error)")
                }
        }
    }
    
 
    
}
