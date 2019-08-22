//
//  ViewController.swift
//  Login
//
//  Created by Danielle Gomes on 2019-08-22.
//  Copyright © 2019 Danielle Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameField: UITextField!
    
    @IBOutlet var passwordField: UITextField!
    
    @IBOutlet var forgotUsernameButton: UIButton!
    
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC = segue.destination as! MainViewController
        
        guard let sender = sender as? UIButton else {return}
        
        if segue.identifier == "Submit" {
            destVC.username = usernameField.text!
        }
        
        if segue.identifier == "ForgottenUserNameOrPassword" && sender == forgotUsernameButton {
             destVC.username = "Forgot User Name"
        }
        
        if segue.identifier == "ForgottenUserNameOrPassword" && sender == forgotPasswordButton {
            destVC.username = "Forgot Password"
        }
    }

    @IBAction func ForgotUsernameBtTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotUsernameButton)
    }
    
    @IBAction func ForgotPasswordBtTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotPasswordButton)
    }
}

