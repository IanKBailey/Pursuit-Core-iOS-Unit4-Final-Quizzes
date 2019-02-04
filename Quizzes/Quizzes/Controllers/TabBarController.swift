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
        let createTab = CreateViewController()
        let quizTab = QuizzesViewController()
        let profileTab = ProfileViewController()
        let searchTab = SearchViewController()
        quizTab.tabBarItem = UITabBarItem(title: "Quizzes", image: UIImage(named: "quiz"), tag: 0)
        createTab.tabBarItem = UITabBarItem(title: "Create", image: UIImage(named: "create"), tag: 2)
        profileTab.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profile"), tag: 3)
        searchTab.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: "add"), tag: 1)
        let tabBarList = [quizTab, searchTab, createTab, profileTab]
        viewControllers = tabBarList.map(UINavigationController.init)
    }
    

    

}
