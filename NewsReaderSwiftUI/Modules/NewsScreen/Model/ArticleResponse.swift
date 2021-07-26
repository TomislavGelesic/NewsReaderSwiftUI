//
//  ArticleResponse.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 26.07.2021..
//

import Foundation

struct ArticleResponse: Codable {
    var author: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}
