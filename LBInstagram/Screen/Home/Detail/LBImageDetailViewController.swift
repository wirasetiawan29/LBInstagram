//
//  LBImageDetailViewController.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class LBImageDetailViewController: UIViewController {


    @IBOutlet var imageSlider: LBImageSlider!

    var model: ImageLocationModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }

    func setupData() {
        imageSlider.configure(with: model?.imageDatas ?? [])
    }

    //MARK: action function
    @IBAction func onClickBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
