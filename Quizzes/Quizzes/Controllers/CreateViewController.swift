//
//  CreateViewController.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    let createView = CreateView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
         self.view.addSubview(createView)
        navigationItem.title = "create"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Create", style: .plain, target: self, action: nil)
    }
    
    
    @objc func create() {
        print("button pressed")
    }
}
