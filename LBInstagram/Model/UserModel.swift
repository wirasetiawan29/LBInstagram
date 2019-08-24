//
//  UserModel.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class UserModel: NSObject {

    var userId: Int64 = 0
    var userLocalId: Int64 = Int64(Date.init().timeIntervalSince1970)
    var userName: String  = ""
    var userFirstName: String = ""
    var userLastName: String = ""
    var userGender: Bool? = nil
    var userPhoneNumber: String = ""
    var userProfileImage: String = ""

    override init() {
        super.init()
    }

}
