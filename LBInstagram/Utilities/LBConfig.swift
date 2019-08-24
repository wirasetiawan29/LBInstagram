//
//  LBConfig.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class LBConfig: NSObject {

    class func saveUserEmail(_ email: String?) {
        UserDefaults.standard.set(email, forKey: LBConstant.keyEmail)
        UserDefaults.standard.synchronize()
    }

    class func getUserEmail() -> String? {
        let email = UserDefaults.standard.object(forKey: LBConstant.keyEmail) as? String
        if email != "" {
            return email
        } else {
            return nil
        }
    }

    class func clearData() {
        UserDefaults.standard.removeObject(forKey: LBConstant.keyEmail)
        UserDefaults.standard.synchronize()
    }

    class func generator() -> [ImageLocationModel] {
        var result:[ImageLocationModel] = []


        let images: [UIImage] = [UIImage(named: "Image1")!,
                                 UIImage(named: "Image2")!,
                                 UIImage(named: "Image3")!,
                                 UIImage(named: "Image4")!]

        for i in 0...3 {
            let model = ImageLocationModel()
            if i == 0 {
                model.imageLocationThumbnail = "Image1"
            } else if i == 1 {
                model.imageLocationThumbnail = "Image2"
            } else if i == 2 {
                model.imageLocationThumbnail = "Image3"
            } else {
                model.imageLocationThumbnail = "Image4"
            }
            model.imageDatas = images
            result.append(model)
        }

        return result
    }
}
