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
}
