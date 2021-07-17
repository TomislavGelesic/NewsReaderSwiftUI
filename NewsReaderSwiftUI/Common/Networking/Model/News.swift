//
//  News.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 17.07.2021..
//

import Foundation

class News: Codable {
    var sortBy: String
    var source: String
    var status: String
    var articles: [Article]
    
    
    init(sortBy: String, source: String, status: String, articles: [Article]) {
        self.sortBy = sortBy
        self.source = source
        self.status = status
        self.articles = articles
    }
    
    required init?(coder: NSCoder) {
        fatalError("News init(coder:) has not been implemented")
    }
}



