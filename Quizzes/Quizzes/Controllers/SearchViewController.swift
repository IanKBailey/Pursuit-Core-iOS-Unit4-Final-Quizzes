//
//  SearchViewController.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

     let searchData = SearchView()
    
    private var search = FlashCardData(){
    didSet {
        DispatchQueue.main.async {
            self.searchData.searchView.setNeedsLayout()
        }
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(searchData)
        searchData.searchView.delegate = (self as UICollectionViewDelegate)
        searchData.searchView.dataSource = (self as UICollectionViewDataSource)
        searchinfo()
    }
    
    
    private func searchinfo() {
        APIClient.init().getSearchData(completionHandler: { (error, search) in
            if let error = error {
                print(error.errorMessage())
            }           else if let data = search {
                self.search = data
                dump(search)
            }
    
    
    
}
)}


}




extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SCell", for: indexPath) as?
            SearchCell else { return UICollectionViewCell() }
        
        return cell
}

}
