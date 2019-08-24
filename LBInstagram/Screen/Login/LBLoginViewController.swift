//
//  LBLoginViewController.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class LBLoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userPasswordTextField: UITextField!
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var usernameWarningLabel: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupUI()
    }

    //MARK: private function
    private func setupUI() {
        userNameTextField.delegate = self
        usernameWarningLabel.isHidden = true
    }

    private func validateInput()->Bool {

        if userNameTextField.text == "" {
            usernameWarningLabel.isHidden = false
            usernameWarningLabel.text = "please input username"
            return false
        }

        if userPasswordTextField.text == "" {
            usernameWarningLabel.isHidden = false
            usernameWarningLabel.text = "please input password"
            return false
        }

        LBConfig.saveUserEmail(userNameTextField.text!)
        return true
    }

    private func openHomeScreen() {
        if validateInput() {
            let loginViewController = LBHomeViewController()
            let navController = UINavigationController(rootViewController: loginViewController)
            navController.isNavigationBarHidden = true
            present(navController, animated: true)
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        usernameWarningLabel.isHidden = true
    }

    //MARK: action function
    @IBAction func onClickLogin(_ sender: Any) {
        openHomeScreen()
    }
}
