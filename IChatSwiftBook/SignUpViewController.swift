//
//  SignUpViewController.swift
//  IChatSwiftBook
//
//  Created by Стас Жингель on 23.08.2021.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "Good to see you!", font: .avenir26())
    let emailLabel = UILabel(text: "Email")
    let passwordLabel = UILabel(text: "Password")
    let confirmLabel = UILabel(text: "Confirm password")
    let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    let signupButton = UIButton(title: "Sign up", titleColor: .white, backgroundColor: .buttonDark())
    let loginButton = UIButton()
    
    let emailTextfield = OneLineTextField()
    let passwordTextfield = OneLineTextField()
    let confirmTextfield = OneLineTextField()
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.buttonRed(), for: .normal)
     //   loginButton.titleLabel?.font
        view.backgroundColor = .white
        setupConstraints()
    }
}







extension SignUpViewController {
     private func setupConstraints() {
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextfield], axis: .vertical, spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextfield], axis: .vertical, spacing: 0)
        let confirmStackView = UIStackView(arrangedSubviews: [confirmLabel, confirmTextfield], axis: .vertical, spacing: 0)
        signupButton.heightAnchor.constraint(equalToConstant:  60).isActive = true
        let stackView = UIStackView(arrangedSubviews:  [emailStackView, passwordStackView, confirmStackView, signupButton], axis: .vertical, spacing: 40)
        let bottomStackView = UIStackView(arrangedSubviews: [alreadyOnboardLabel,loginButton], axis: .horizontal , spacing: 5 )
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcomeLabel)
        welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 160).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addSubview(stackView)
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 160).isActive = true
        view.addSubview(bottomStackView)
        bottomStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -60).isActive = true
        bottomStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        
        
    }
}














import SwiftUI

struct ViewControllerProvider1: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    struct ContainerView: UIViewControllerRepresentable {
        let viewController = SignUpViewController()
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
