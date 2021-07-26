//
//  NewsView.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 16.07.2021..
//

import SwiftUI

struct NewsView: View {
    
    @ObservedObject var newsViewModel: NewsViewModel
    
    init(newsViewModel: NewsViewModel) {
        self.newsViewModel = newsViewModel
    }
    
    var body: some View {
        NavigationView {
            List(newsViewModel.articles) { article in
                NewsListItemView(item: article)
            }
            .navigationTitle(Text("NewsReaderApp"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(newsViewModel: NewsViewModel())
    }
}
