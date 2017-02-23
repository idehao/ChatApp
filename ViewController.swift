//
//  ViewController.swift
//  ChatApp
//
//  Created by Ivor D. Addo on 2/22/17.
//  Copyright © 2017 deHao. All rights reserved.
//

import UIKit

// TODO: 1. replace the inherited class from UIViewController to UITableViewController
class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //TODO: 2. Add a navigationItem to the top of the bar for logout and map it to a new function
        navigationItem.leftBarButtonItem = UIBarButtonItem(title:"Logout",
                                            style: .plain, target: self, action: #selector(handleLogout))
        
        
    }

    //TODO: 3. create the corresponding eventHandler function for the Logout button
    func handleLogout(){
    
        // TODO: 8. show the LoginController when the Logout button is clicked on
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
        
        // TODO: 9 Test the App: Logout button functionality
        // Stop and Test the App again, notice how the background color randomly changes
        
        
    }
    // run your App to confirm that the "Logout" button displays

    // TODO: 4. Create a new "Group" folder under the ChatApp Folder and move the ViewController.swift file under that folder
    // TODO: 5. Add a new View Controller named "LoginController"
}

