//
//  CustomTextFiled.swift
//  InstagramFirestoreTutorial
//
//  Created by 양혜지 on 2022/03/28.
//

import UIKit

class CustromTextField: UITextField {
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        
        // 텍스트 필드 앞에 여백주기
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        leftView = spacer
        leftViewMode = .always
        
        borderStyle = .none
        textColor = .white
        keyboardAppearance = .dark
        keyboardType = .emailAddress
        backgroundColor = UIColor(white: 1, alpha: 0.1)
        setHeight(50)
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
     
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}
