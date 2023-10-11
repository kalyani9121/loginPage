//
//  ViewController.swift
//  UserLoginPage
//
//  Created by Srinivas Kurva on 10/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool)
    {
        print("loaded")
        let isUserLoggedIn  = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        if(!isUserLoggedIn)
        {
            self.performSegue(withIdentifier: "loginView", sender: self)
        }
        
      //  self.PerformSegueWithIdentifier("loginView", sender: self)
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        
        
        UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        UserDefaults.standard.synchronize()
        self.performSegue(withIdentifier: "loginView", sender: self)
        
    }
    
}

