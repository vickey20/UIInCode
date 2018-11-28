//
//  ViewController.swift
//  UIInCode
//
//  Created by Vikram Gupta on 11/26/18.
//  Copyright © 2018 Vikram Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let loginContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let userNameTextField: UITextField = {
        let view = UITextField()
        view.backgroundColor = .white
        view.placeholder = "Username"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let passwordTextField: UITextField = {
        let view = UITextField()
        view.backgroundColor = .white
        view.placeholder = "Password"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let loginButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .blue
        btn.setTitle("Login", for: .normal)
        btn.tintColor = .white
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private func setupAutoLayout() {
        loginContentView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        userNameTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        userNameTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        userNameTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        userNameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        loginButton.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        loginButton.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: loginContentView.bottomAnchor, constant: -20).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        loginContentView.addSubview(userNameTextField)
        loginContentView.addSubview(passwordTextField)
        loginContentView.addSubview(loginButton)
        view.addSubview(loginContentView)
        
        loginButton.addTarget(self, action: #selector(self.pressed), for: .touchUpInside)
        
        setupAutoLayout()
    }
    
    @objc func pressed(sender: UIButton!) {
        print("button pressed")
        let tableVC = TableViewController()
        
        self.present(tableVC, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

