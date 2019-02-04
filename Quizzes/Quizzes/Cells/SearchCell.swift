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
        label.text = "place holder text afsfasfafa fdgggdsgf dfsafag eegseg fasfg hr"
        label.backgroundColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
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
        constraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func constraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 11).isActive = true
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
