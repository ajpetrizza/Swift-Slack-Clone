//
//  LoginVC.swift
//  Smack
//
//  Created by Anthony Petrizza on 1/5/18.
//  Copyright © 2018 Anthony Petrizza. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    //Cancel button pressed
    @IBAction func cancelBtnPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    
}
