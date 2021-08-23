//
//  ViewController.swift
//  IChatSwiftBook
//
//  Created by Стас Жингель on 22.08.2021.
//

import UIKit

 class AuthViewController: UIViewController {

    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true)
    let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonDark())
    let loginButton = UIButton(title: "Login", titleColor: .buttonRed(), backgroundColor: .white, isShadow: true)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupconstraints()
    }
}









extension AuthViewController {
    private func setupconstraints() {
        view.addSubview(logoImageView)
        let googleView = buttonFormView(label: googleLabel, button: googleButton)
        let emailView = buttonFormView(label: emailLabel, button: emailButton)
        let loginView = buttonFormView(label: alreadyOnboardLabel, button: loginButton)
        let stackView1 = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
        view.addSubview(stackView1)
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160).isActive = true
        stackView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        stackView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}




import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    struct ContainerView: UIViewControllerRepresentable {
        let viewController = AuthViewController()
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
