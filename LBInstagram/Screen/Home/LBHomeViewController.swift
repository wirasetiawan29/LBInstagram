//
//  LBHomeViewController.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class LBHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    private func setupData() {
    }

    private func setupUI() {
        
    }

    private func logout() {
        LBConfig.clearData()
        self.navigationController?.dismiss(animated: true, completion: nil)
    }

    @IBAction func onClickLogout(_ sender: Any) {
        logout()
    }
}
