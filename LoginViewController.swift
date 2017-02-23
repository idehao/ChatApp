//
//  LoginViewController.swift
//  ChatApp
//
//  Created by Ivor D. Addo on 2/23/17.
//  Copyright © 2017 deHao. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnLogin_TouchUpInside(_ sender: Any) {
    }
    
}
