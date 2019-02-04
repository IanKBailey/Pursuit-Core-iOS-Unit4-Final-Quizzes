//
//  SearchModel.swift
//  Quizzes
//
//  Created by Ian Bailey on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct FlashCards: Codable {
    let id: String
    let quizTitle: String?
    let facts: [String]?

}

