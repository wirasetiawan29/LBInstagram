//
//  LBBaseViewController.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class LBSplashViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkNextScreen()
    }

    func checkNextScreen(){
        UIView.animate(withDuration: 1.0, animations: {

        }) { finished in
            if LBConfig.getUserEmail() != nil {
                self.openHomeScreen()
            } else {
                self.openLoginScreen()
            }
        }
    }

    func openHomeScreen(){
        let loginViewController = LBHomeViewController()
        let navController = UINavigationController(rootViewController: loginViewController)
        navController.isNavigationBarHidden = true
        present(navController, animated: true)
    }

    func openLoginScreen(){
        let loginViewController = LBLoginViewController()
        let navController = UINavigationController(rootViewController: loginViewController)
        navController.isNavigationBarHidden = true
        present(navController, animated: true)
    }

}
