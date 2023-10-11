//
//  RegisterViewController.swift
//  UserLoginPage
//
//  Created by Srinivas Kurva on 11/10/23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var reEnterPassWordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerClicked(_ sender: Any) {
        let userEmail = emailTextField.text
        let userPAssword = passwordTF.text
        let userReEnterPassword = reEnterPassWordTF.text
           
        if((userEmail?.isEmpty != nil) || (userPAssword?.isEmpty != nil) || userReEnterPassword?.isEmpty != nil )
        {
            print("empty")
            displayMyAlertMessage(userMessage: "all fields are required")
                print(userPAssword ?? self)
                print(userReEnterPassword ?? self)
            return;
        }
        
        if(userPAssword != userReEnterPassword)
        {
            print(userPAssword ?? (Any).self)
            print(userReEnterPassword ?? (Any).self)
            displayMyAlertMessage(userMessage: "passwords do not match")
            return;
            
        }
        // Store data
        UserDefaults.standard.set(userEmail, forKey: "user email")
        UserDefaults.standard.set(userPAssword, forKey: "user password")
        UserDefaults.standard.synchronize()
        
        let alertController = UIAlertController(title: "Alert", message: "Registration is suceesful. thank you", preferredStyle: .alert)

        present(alertController, animated: true, completion: nil)
        
        let okAction = UIAlertAction(title: "ok", style: .default){
            action in self.dismiss(animated: true, completion: nil)
        
//        let okAction = UIAlertAction(title: "ok", style: .default){
//            action in self.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(okAction)
            
    }
    func displayMyAlertMessage(userMessage: String)
    {
      
        let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)

                present(alertController, animated: true, completion: nil)
        
        
        let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertController.addAction(okAction)
       // present(alertController, animated: true, completion: nil)
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
