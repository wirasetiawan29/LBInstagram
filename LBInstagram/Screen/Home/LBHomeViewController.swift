//
//  LBHomeViewController.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class LBHomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var profileButton: UIButton!
    @IBOutlet var homeButton: UIButton!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageListView: UIView!
    @IBOutlet var profileDetailView: UIView!

    var imageListViewController: LBImageListViewController?
    var profileDetailViewController: LBProfileDetailViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }

    //MARK: private function
    func setUpUI() {
        imageListViewController = LBImageListViewController()
        insert(imageListViewController!, to: imageListView)

        profileDetailViewController = LBProfileDetailViewController()
        insert(profileDetailViewController!, to: profileDetailView)
    }

    func insert(_ viewController: UIViewController?, to containerView: UIView?) {

        viewController?.view.translatesAutoresizingMaskIntoConstraints = false
        if let view = viewController?.view {
            containerView?.addSubview(view)
        }

        if let view = viewController?.view {
            containerView?.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v]|", options: [], metrics: nil, views: [
                "v": view
                ]))
        }
        if let view = viewController?.view {
            containerView?.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v]|", options: [], metrics: nil, views: [
                "v": view
                ]))
        }
        containerView?.layoutIfNeeded()

        if let viewController = viewController {
            addChild(viewController)
        }

    }

    func isSelectedHomeButton(isSelected:Bool){
        if isSelected {
            homeButton.alpha = 1
            homeButton.setTitleColor(UIColor.blue, for: .normal)
            homeButton.setImage(UIImage.init(named: "IconHomeFilled"), for: .normal)

            profileButton.alpha = 0.5
            profileButton.setTitleColor(UIColor.darkGray, for: .normal)
            profileButton.setImage(UIImage.init(named: "IconProfileDetail"), for: .normal)
        } else {
            homeButton.alpha = 0.5
            homeButton.setTitleColor(UIColor.darkGray, for: .normal)
            homeButton.setImage(UIImage.init(named: "IconHome"), for: .normal)

            profileButton.alpha = 1
            profileButton.setTitleColor(UIColor.blue, for: .normal)
            profileButton.setImage(UIImage.init(named: "IconProfileDetailFilled"), for: .normal)
        }
    }

    @IBAction func onClickHomeButton(_ sender: Any) {
        isSelectedHomeButton(isSelected: true)
        scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height), animated: true)
    }

    @IBAction func onClickProfileButton(_ sender: Any) {
        isSelectedHomeButton(isSelected: false)
        scrollView.scrollRectToVisible(CGRect(x: view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height), animated: true)
    }
}
