//
//  LoginController.swift
//  InstagramFirestoreTutorial
//
//  Created by 양혜지 on 2021/09/26.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    
    private let iconImge : UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "Instagram_logo_white"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    private let emailTextField : UITextField = {
        
        let tf = CustromTextField(placeholder: "Email")
        tf.keyboardType = .emailAddress
        
        return tf
    }()
    
    private let PasswordTextField : UITextField = {
        
        let tf = CustromTextField(placeholder: "Password")
        tf.isSecureTextEntry = true
        
        return tf
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemPurple
        button.layer.cornerRadius = 5
        button.setHeight(50)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        
        return button
    }()
    
    private let doneHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        
        
        button.attributedTitle(firstPart: "Don't have an account?   ", secondPart: "Sign up")
       
        
        return button
    }()
    
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.attributedTitle(firstPart: "Forgot you password? " , secondPart: "Get help signing in. ")
        
        return button
    }()
    
    //privat let iconImage = UIImageView(image:)
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    

    // MARK: -Helpers
    
    func configureUI(){
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor] // 애니메이션 같은 것을 볼 땐, cgcolor 사용
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(iconImge)
        iconImge.centerX(inView: view)
        iconImge.setDimensions(height: 80, width: 120)
        iconImge.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
        
        let stack = UIStackView(arrangedSubviews: [emailTextField, PasswordTextField, loginButton, forgotPasswordButton])
        stack.axis = .vertical
        stack.spacing = 20
        
        view.addSubview(stack)
        stack.anchor(top: iconImge.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 32, paddingLeft: 32, paddingRight: 32)
        
        view.addSubview(doneHaveAccountButton)
        doneHaveAccountButton.centerX(inView: view)
        doneHaveAccountButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor)
        
    }

}
