//
//  FeedCell.swift
//  InstagramFirestoreTutorial
//
//  Created by 양혜지 on 2021/09/26.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        backgroundColor = .systemPurple
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder: ) has not been implementeds")
    }
}
