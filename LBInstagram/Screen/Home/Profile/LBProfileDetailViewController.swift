//
//  LBProfileDetailViewController.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class LBProfileDetailViewController: UIViewController {


    @IBOutlet var userEmailLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    //MARK: private function
    private func setupUI(){
        userEmailLabel.text = LBConfig.getUserEmail()?.uppercased()
    }

    private func logout() {
        LBConfig.clearData()
        self.navigationController?.dismiss(animated: true, completion: nil)
    }

    //MARK: action function
    @IBAction func onClickLogout(_ sender: Any) {
        logout()
    }
}
