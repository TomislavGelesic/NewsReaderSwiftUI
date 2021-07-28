//
//  Article.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 16.07.2021..
//

import SwiftUI

struct Article: Codable, Identifiable {
    var id: UUID
    var title: String
    var description: String
    var imagePath: String
    
    static func getTestable(id: UUID = UUID(),
                            title: String = "testTitle",
                            description: String = "testDescription",
                            imagePath: String = "test image url path") -> Article {
        return Article(id: id, title: title, description: description, imagePath: imagePath)
    }
    
}
