//
//  TabBarController.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let quizTab = QuizzesViewController()
        let createTab = CreateViewController()
        let profileTab = ProfileViewController()
        let searchTab = SearchViewController()
        quizTab.tabBarItem = UITabBarItem(title: "Quizzes", image: UIImage(named: "quiz-icon"), tag: 0)
        createTab.tabBarItem = UITabBarItem(title: "Create", image: UIImage(named: "create-icon"), tag: 2)
        profileTab.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profile-unfilled"), tag: 3)
        searchTab.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: ""), tag: 1)
        let tabBarList = [quizTab, searchTab, createTab, profileTab]
        viewControllers = tabBarList
    }
    

    

}
