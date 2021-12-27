//
//  ViewController.swift
//  LoginTest
//
//  Created by 이윤성 on 2021/12/24.
//

import UIKit
import AuthenticationServices


class ViewController: UIViewController {
    
    let authorizationAppleIDButton = ASAuthorizationAppleIDButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
    }
    
    // UI 구성
    private func configureUI() {
        setAdditionalPropertyAttributes()
        setConstraints()
    }
    
    // Attribute 설정
    private func setAdditionalPropertyAttributes(){
        authorizationAppleIDButton.addTarget(self, action: #selector(handleAuthorizationAppleIDButton(_:)), for: .touchUpInside)
    }
    // constraint 설정
    private func setConstraints() {
        view.addSubview(authorizationAppleIDButton)
        authorizationAppleIDButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([ authorizationAppleIDButton.centerXAnchor.constraint(equalTo: view.centerXAnchor), authorizationAppleIDButton.centerYAnchor.constraint(equalTo: view.centerYAnchor) ])
        
    }
    
    @objc private func handleAuthorizationAppleIDButton(_ sender: ASAuthorizationAppleIDButton) {
        let provider = ASAuthorizationAppleIDProvider()
        let request = provider.createRequest()
        request.requestedScopes = [.fullName, .email]
        let controller = ASAuthorizationController(authorizationRequests: [request])
        controller.performRequests()
        controller.delegate = self
        controller.presentationContextProvider = self
    }
}

extension ViewController: ASAuthorizationControllerDelegate {
    
    // login success
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
            // create account my system.
            let userIdentifier = appleIDCredential.user
            let userFirstName = appleIDCredential.fullName?.givenName
            let userLastName = appleIDCredential.fullName?.familyName
            let userEmail = appleIDCredential.email
            let appleIDProvider = ASAuthorizationAppleIDProvider()
            appleIDProvider.getCredentialState(forUserID: userIdentifier) {(credentialState, error) in
                switch credentialState {
                case .authorized:
                    print("authorized success")
                    // 사용자의 identifier가 정상적으로 인식 되었을 경우
                    break
                case .revoked:
                    // 사용자의 id.. 가 유효하지 않은 경우
                    print("reject identifier")
                    break
                case .notFound:
                    // 사용자의 id를 찾지 못한 경우
                    print("cannot found identifier")
                    break
                default:
                    break
                }
            }
        }        
    }
    
    // login fail
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error){
            print(error)
    }
}

extension ViewController: ASAuthorizationControllerPresentationContextProviding {
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return view.window!
    }
}
