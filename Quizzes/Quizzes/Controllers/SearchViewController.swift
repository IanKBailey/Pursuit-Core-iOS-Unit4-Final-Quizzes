//
//  SearchViewController.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

     var searchData = SearchView()
    
    private var search = [FlashCards](){
    didSet {
        DispatchQueue.main.async {
            self.searchData.searchView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(searchData)
        searchData.searchView.delegate = self
        searchData.searchView.dataSource = self
        getSearchData()
    }
    private func getSearchData() {
        APIClient.getSearchData { (appError, quizData) in
            if let appError = appError {
                print(appError.errorMessage())
            }   else if let data = quizData {
                self.search = data
                dump(data)
            }
        }
    }
}

extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return search.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SCell", for: indexPath) as?
            SearchCell else { return UICollectionViewCell() }
        let searchInfo = search[indexPath.row]
        cell.label.text = searchInfo.quizTitle
        return cell
    }
}
