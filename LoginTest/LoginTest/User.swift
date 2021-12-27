//
//  User.swift
//  LoginTest
//
//  Created by 이윤성 on 2021/12/24.
//

import Foundation

struct User {
    let id : String
    let firstName : String
    let lastName : String
    let email : String
}

// print user infomation
extension User : CustomDebugStringConvertible{
    var debugDescription: String {
        return """
            ID: \(id)
            First Name : \(firstName)
            Last Name : \(lastName)
            Email : \(email)
            """
    }
}
