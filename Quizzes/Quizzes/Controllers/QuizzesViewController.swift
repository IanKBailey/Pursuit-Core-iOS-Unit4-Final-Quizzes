//
//  QuizzesViewController.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizzesViewController: UIViewController {

    let quizView = QuizzesView()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        self.view.addSubview(quizView)
       quizView.collectionView.delegate = self
        quizView.collectionView.dataSource = self
        
    }
    

   

}
extension QuizzesViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as?
            QuizzesCell else { return UICollectionViewCell() }
        
        return cell
}
    
}
