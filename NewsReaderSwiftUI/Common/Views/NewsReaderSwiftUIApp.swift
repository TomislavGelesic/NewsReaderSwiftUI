//
//  NewsReaderSwiftUIApp.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 16.07.2021..
//

import SwiftUI

@main
struct NewsReaderSwiftUIApp: App {
    
    @StateObject private var newsViewModel = NewsViewModel()
    
    var body: some Scene {
        WindowGroup {
            NewsView(newsViewModel: self.newsViewModel)
        }
    }
}
