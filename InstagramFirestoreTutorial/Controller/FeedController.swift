//
//  FeedController.swift
//  InstagramFirestoreTutorial
//
//  Created by 양혜지 on 2021/09/19.
//


import UIKit

class FeedController: UIViewController {
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI()  {
        view.backgroundColor = .white
    }
}

//import UIKit
//
//private let reuseIdentifier = "Cell"
//
//class FeedController: UICollectionViewController {
//
//    // MARK: - LifeCycle
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureUI()
//    }
//
//    // MARK: - Helpers
//
//    func configureUI()  {
//        collectionView.backgroundColor = .white
//
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
//    }
//}
//
//
//// MARK: - UICollectionViewDataSource
//
//extension FeedController {
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int)
//        -> Int {
//        return 5
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)
//        -> UICollectionViewCell{
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
//        cell.backgroundColor = .red
//        return cell
//    }
//
//}
