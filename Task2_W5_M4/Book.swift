//
//  Book.swift
//  Task2_W5_M4
//
//  Created by Aziz on 16/1/22.
//

import Foundation
import UIKit
import SnapKit

class Book {
    var photo: String
    var price: String
    var author: String
    var title: String
    
    init(image: String, price: String, author: String, title: String) {
        self.photo = image
        self.price = price
        self.author = author
        self.title = title
    }
}
