//
//  APIClient.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class APIClient {
    func getSearchData(completionHandler: @escaping ((AppError?, FlashCardData?)-> Void)) {
        let url = "https://quizzes-9ff59.firebaseio.com/.json"
        NetworkHelper.shared.performDataTask(endpointURLString: url, httpMethod: "GET", httpBody: nil) { (error, data) in
        if let error = error {
        completionHandler(error, nil)
        }
        if let data = data {
        do {
            let searchInfo = try JSONDecoder().decode(FlashCards.self, from: data)
        completionHandler(nil, searchInfo.results)
        } catch {
        completionHandler(AppError.jsonDecodingError(error), nil)
            }
        }
    }
}
}
