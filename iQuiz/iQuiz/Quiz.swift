//
//  Quiz.swift
//  iQuiz
//
//  Created by AT on 11/11/17.
//  Copyright © 2017 AT. All rights reserved.
//

import UIKit

class Quiz {
    var name: String
    var photo: UIImage?
    var description: String
    
    init?(name: String, photo: UIImage?, description: String) {
        guard !name.isEmpty else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.description = description
    }
}
