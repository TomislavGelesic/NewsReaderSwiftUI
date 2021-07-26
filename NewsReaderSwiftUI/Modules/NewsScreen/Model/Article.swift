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
    var text: String
    var imagePath: String
}
