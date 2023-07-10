//
//  LoginPageViewController.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

import UIKit

class LoginPageViewController: UIViewController {

    // MARK: - Properties

    /// Labels
    private let instantSupplyChainLabel: UILabel = CustomLabel(text: "2019 © Instant Supply Chain Solution Private Limited", alignment: .center)
   
    /// Images views
    private let xpIndiaLogo: UIImageView = CustomImageView(name: "logo_xp")
    private let emailIcon: UIImageView = SystemImageView(name: "envelope", color: .black)
    private let passwordIcon: UIImageView = SystemImageView(name: "lock", color: .black)
    
    /// Textfields
    private let emailTextField: UITextField = CustomTextField(placeholder: "Enter your email id")
    private let passwordTextField: UITextField = CustomTextField(placeholder: "Enter your password", isSecureTextEntry: true)

    /// Views
    private lazy var emailTextView: UIView = CustomView(imageView: emailIcon, textField: emailTextField, color: .black)
    private lazy var passwordTextView: UIView = CustomView(imageView: passwordIcon, textField: passwordTextField, color: .black)
    
    /// Buttons
    private let eyeIcon: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        button.tintColor = UIColor.black.withAlphaComponent(0.6)
        return button
    }()

    private let loginButton: UIButton = CustomButton(title: "Login", size: 20, cornerRadius: 8, backgroundColor: .black, tintColor: .white, titleColor: .white)
    private let singUpButton: UIButton = CustomButton(title: "Sing Up", size: 20, cornerRadius: 8, backgroundColor: .black, tintColor: .white, titleColor: .white)
    private let forgetPasswordButton: UIButton = CustomButton(title: "Forget Password?", size: 14, cornerRadius: 0, backgroundColor: .white, tintColor: .systemBlue, titleColor: .systemBlue)


    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }

    // MARK: - Selectors
    @objc private func handleLoginButton() {
        let navVC = TabbarController()
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: true)
    }

    // MARK: - Helpers
    private func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true

        view.addSubview(xpIndiaLogo)
        xpIndiaLogo.centerX(inView: view)
        xpIndiaLogo.anchor(top:view.safeAreaLayoutGuide.topAnchor, paddingTop: 20)
        xpIndiaLogo.setDimensions(height: view.frame.height * 0.20, width: view.frame.width * 0.45)
        
        view.addSubview(emailTextView)
        emailTextView.anchor(top: xpIndiaLogo.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 50, paddingLeft: 20, paddingRight: 20, height: 50)
        
        passwordTextView.addSubview(eyeIcon)
        eyeIcon.centerY(inView: passwordTextView)
        eyeIcon.anchor(right: passwordTextView.rightAnchor, paddingRight: 5, width: 28, height: 24)

        view.addSubview(passwordTextView)
        passwordTextView.anchor(top: emailTextView.bottomAnchor, left: emailTextView.leftAnchor, right: emailTextView.rightAnchor, paddingTop: 30)
        passwordTextView.setheights(height: 50)

        view.addSubview(forgetPasswordButton)
        forgetPasswordButton.anchor(top: passwordTextView.bottomAnchor, right: view.rightAnchor, paddingTop: 10, paddingRight: 10, height: 40)

        view.addSubview(loginButton)
        loginButton.anchor(top: forgetPasswordButton.bottomAnchor, left: passwordTextView.leftAnchor, right: passwordTextView.rightAnchor, paddingTop: 50, height: 50)
        loginButton.addTarget(self, action: #selector(handleLoginButton), for: .touchUpInside)

        view.addSubview(singUpButton)
        singUpButton.anchor(top: loginButton.bottomAnchor, left: loginButton.leftAnchor, right: loginButton.rightAnchor, paddingTop: 30, height: 50)
        
        view.addSubview(instantSupplyChainLabel)
        instantSupplyChainLabel.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 10, paddingBottom: 20, paddingRight: 10, height: 40)
    }
}
