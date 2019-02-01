//
//  SearchCell.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchCell: UICollectionViewCell {
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "place holder text"
        label.backgroundColor = .white
        
       return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "add-icon-filled"), for: .normal)
        return button
    }()
    
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        addSubview(label)
        addSubview(button)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
    
}
