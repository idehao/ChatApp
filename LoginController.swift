//
//  LoginController.swift
//  ChatApp
//
//  Created by Ivor D. Addo on 2/22/17.
//  Copyright © 2017 deHao. All rights reserved.
//

import UIKit
import ChameleonFramework // TODO: 6. Add import Chameleon Framework

class LoginController: UIViewController {

    //TODO: 11. create the white UIView container for the login page
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        // implement rounded corners on the container
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        
        return view
    }()
    
    
    // TODO: 14. now let's create a Register button
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        button.backgroundColor = UIColor.flatNavyBlueColorDark()
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.white, for: .normal) // use a white text color
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16) // use a bold font size of 16
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // TODO: 18. now let's add the name TextFields
    let nameTextField: UITextField = {
        let txtF = UITextField()
        txtF.placeholder = "Name"
        txtF.translatesAutoresizingMaskIntoConstraints = false
        return txtF
    }()
    
    // TODO: 18b. add an associated seperator line
    let nameSeparatorView: UIView = {
        let spLine = UIView()
        spLine.backgroundColor = UIColor.flatWhiteColorDark()
        spLine.translatesAutoresizingMaskIntoConstraints = false
        return spLine
    }()
    
    
    // TODO: 20. create other text fields and separators
    let emailTextField: UITextField = {
        let txtF = UITextField()
        txtF.placeholder = "Email Address"
        txtF.translatesAutoresizingMaskIntoConstraints = false
        return txtF
    }()
    
    let emailSeparatorView: UIView = {
        let spLine = UIView()
        spLine.backgroundColor = UIColor.flatWhiteColorDark()
        spLine.translatesAutoresizingMaskIntoConstraints = false
        return spLine
    }()
    
    let passwordTextField: UITextField = {
        let txtF = UITextField()
        txtF.placeholder = "Password"
        txtF.translatesAutoresizingMaskIntoConstraints = false
        //  set securetext property for password masking
        txtF.isSecureTextEntry = true
        return txtF
    }()
    
    // TODO: Add the image photo to the Assets.xcassets folder
    // TODO: 20. Create the profileImageView
    let profileImageView: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named:"ChatAppLogo")
        imgView.contentMode = .scaleAspectFill
        imgView.translatesAutoresizingMaskIntoConstraints = false

        return imgView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: 7. remove unnecessary code in this file
        // set the background color to a random flat color
        view.backgroundColor = UIColor.flatTeal()//UIColor.randomFlat()
        
        // make the UIView a subView
        view.addSubview(inputsContainerView)
        
        // TODO: 15. add the button as a subview
        view.addSubview(loginRegisterButton)
        
        // TODO: 12c. call the: setupInputsContainerView function
        setupInputsContainerView()
        
        // TODO: 16. add a function to setup the contraints
        setupLoginRegisterButton()
        
        
        // TODO: 13. Now test the Logout button in your App
        // With the simulator open, use the "Hardware" > "Rotate Left" menu option ot test your App under various portait and landscape views
        
        // TODO: 22. setupProfileImageView and add as SubView
        view.addSubview(profileImageView)
        setupProfileImageView()
    }

    
    // TODO: create function forsetupProfileImageView()
    func setupProfileImageView(){
        // handle the constraints
        // add x, y, width, height constraints
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: -20).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant:150).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant:150).isActive = true
    }
    
    
    // TODO: 12a create a function to implement the container constraints
    func setupInputsContainerView(){
        // TODO: 12b. let's add in contraints for x,y, width and height
        // center the UIView in the ViewController window both vertically/y and horizontally/x
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // center width and height
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true // 150 pixels fixed height
        
        
        // TODO: 19. Add the name textField as a SubView
        inputsContainerView.addSubview(nameTextField)
        inputsContainerView.addSubview(nameSeparatorView)
        
        // add x, y, width, height constraints
        nameTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        // make the height 1/3 so we can fit 3 text fields in the container
        nameSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        nameSeparatorView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true

        // TODO: 21. Add other textviews as subviews
        inputsContainerView.addSubview(emailTextField)
        inputsContainerView.addSubview(emailSeparatorView)
        inputsContainerView.addSubview(passwordTextField)
        
        // handle the constraints
        // add x, y, width, height constraints
        emailTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        // make the height 1/3 so we can fit 3 text fields in the container
        emailSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        emailSeparatorView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // handle the constraints
        // add x, y, width, height constraints
        passwordTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailSeparatorView.bottomAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
    }
    
    // TODO: 17 create a function to implement the container constraints
    func setupLoginRegisterButton(){
        // TODO: 12b. let's add in contraints for x,y, width and height
        // center the UIView in the ViewController window both vertically/y and horizontally/x
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginRegisterButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        // the top of the button will be 12 pixels below the bottom of the containerView
        
        // center width and height. make sure width is the same width as container
        loginRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true // 150 pixels fixed height
        
    }

    // TODO: 10. add this override function to create a white status bar on the login page
    // NOTE: in iOS 10:preferredStatusBarStyle is a property and not a method
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
