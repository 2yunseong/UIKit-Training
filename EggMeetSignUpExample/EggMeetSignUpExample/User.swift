//
//  User.swift
//  EggMeet
//
//  Created by 이윤성 on 2021/12/26.
//

import Foundation
import AuthenticationServices

struct User {
    // 애플 로그인에서 받아오는 양식
    let id: String
    let firstName : String
    let lastName : String
    let email: String
    
    
    init(credentials: ASAuthorizationAppleIDCredential){
        self.id = credentials.user
        self.firstName = credentials.fullName?.givenName ?? ""
        self.lastName = credentials.fullName?.familyName ?? ""
        self.email = credentials.email ?? ""
    }
}

// 디버그를 위한 User 정보 출력
extension User: CustomDebugStringConvertible{
    var debugDescription: String {
        return"""
        ID: \(id)
        First Name: \(firstName)
        Last Name: \(lastName)
        Email: \(email)
        """
    }
}

