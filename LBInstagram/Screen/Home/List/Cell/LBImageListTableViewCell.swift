//
//  LBImageListTableViewCell.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class LBImageListTableViewCell: UITableViewCell {

    @IBOutlet var imageShowImageView: UIImageView!
    func setUpData(_ model: ImageLocationModel?) {
        imageShowImageView.image = UIImage.init(named: model?.imageLocationThumbnail ?? "IconProfile")
    }
   
}
