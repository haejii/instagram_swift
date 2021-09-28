//
//  LoginController.swift
//  InstagramFirestoreTutorial
//
//  Created by 양혜지 on 2021/09/26.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    // MARK: - Lifecycle
    
    private let iconImage: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "Instagram_logo_white"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
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
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(iconImage)
        iconImage.centerY(inView: view)
        iconImage.setDimensions(height: 80, width: 120)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
    }

}
