//
//  CreateView.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateView: UIView {

    
    lazy var textField: UITextField = {
        let layout = UITextField.init(frame: CGRect.init(x: 11, y: 100, width: 390, height: 50))
        layout.backgroundColor = .black
        layout.textColor = .white
        return layout
    }()
    
    lazy var textViewOne: UITextView = {
        let layout = UITextView.init(frame: CGRect.init(x: 11, y: 200, width: 390, height: 200))
        layout.backgroundColor = .gray
        return layout
    }()
    
    lazy var textViewTwo: UITextView = {
        let layout = UITextView.init(frame: CGRect.init(x: 11, y: 425, width: 390, height: 200))
        layout.backgroundColor = .white
        return layout
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(textViewOne)
        addSubview(textField)
        addSubview(textViewTwo)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
