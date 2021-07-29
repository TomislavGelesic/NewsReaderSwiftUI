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
            List {
                ForEach(newsViewModel.articles, id: \.id) { article in
                    NewsListItemView(article: article)
                        .background(Rectangle().fill(Color.white).shadow(radius: 8))
                        .padding()
                }
            }
            .navigationTitle(Text("NewsReaderApp"))
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        return NewsView(newsViewModel: NewsViewModel())
    }
}
