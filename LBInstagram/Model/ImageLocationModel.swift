//
//  ImageLocationModel.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class ImageLocationModel: NSObject {

    var imageLocationId: Int64 = 0
    var imageLocationLocalId: Int64 = Int64(Date.init().timeIntervalSince1970)
    var imageLocationName: String  = ""
    var imageLocationThumbnail: String = ""
    var imageDatas: [UIImage] = []

    override init() {
        super.init()
    }

}
