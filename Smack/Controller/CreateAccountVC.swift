//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Anthony Petrizza on 1/5/18.
//  Copyright © 2018 Anthony Petrizza. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
