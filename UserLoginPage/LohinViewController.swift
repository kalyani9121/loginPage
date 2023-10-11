//
//  LohinViewController.swift
//  UserLoginPage
//
//  Created by Srinivas Kurva on 11/10/23.
//

import UIKit

class LohinViewController: UIViewController {

    @IBOutlet weak var userEmailTF: UITextField!
    
    @IBOutlet weak var userPassWordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        print("login clicked")
        
        let userEmail = userEmailTF.text
        let userPassword = userPassWordTF.text
        
        
        let userEmailStored =  UserDefaults.standard.string(forKey: "user email")
        let userPasswordStored = UserDefaults.standard.string(forKey: "user password")
        
        if(userEmailStored == userEmail)
        {
            if(userPasswordStored == userPassword)
            {
                print("login sucessful")
                
                UserDefaults.standard.bool(forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
                
            }
        }
        
       
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
