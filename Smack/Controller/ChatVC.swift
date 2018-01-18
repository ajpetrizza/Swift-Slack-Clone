//
//  ChatVC.swift
//  Smack
//
//  Created by Anthony Petrizza on 1/5/18.
//  Copyright © 2018 Anthony Petrizza. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    
    //outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // grabbing all our channels SHORTCUT FOR NOW
        MessageService.instance.findAllChannels { (success) in
            
        }

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        // adding tap and swipe to reveal and hide the view
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        //checking if we are logged in
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail(completion: { (success) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
            })
        }
        
        
    }

    


}
