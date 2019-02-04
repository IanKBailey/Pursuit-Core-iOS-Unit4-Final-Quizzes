//
//  QuizzesView.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizzesView: UIView {

    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 175, height: 350)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 11, bottom: 20, right: 11)
        let cv = UICollectionView.init(frame: CGRect.init(x: 11, y: 100, width: 390.0, height: 700.0) , collectionViewLayout: layout)
        cv.backgroundColor = .yellow
        layout.scrollDirection = .vertical
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(collectionView)
        collectionView.register(QuizzesCell.self, forCellWithReuseIdentifier: "QCell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

        


