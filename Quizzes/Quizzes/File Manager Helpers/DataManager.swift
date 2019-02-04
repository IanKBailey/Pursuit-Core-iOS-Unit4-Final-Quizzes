//
//  DataManager.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/4/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class QuizDataManager {
    private init() {}
    
    private static let filename = "Quizzes.plist"
    
    private static var quizzes = [FlashCards]()
    
    static public func QuizFromDocumentsDirectory() -> [FlashCards] {
        let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename).path
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                    quizzes = try PropertyListDecoder().decode([FlashCards].self, from: data)
                } catch {
                    print("property list decoding error: \(error)")
                }
            } else {
                print("data is nil")
            }
        } else {
            print("\(filename) does not exist")
        }
        return quizzes
    }
}
