//
//  NewsView.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 16.07.2021..
//

import SwiftUI

struct NewsView: View {
    
    var viewModel = NewsViewModel(dependencies: NewsDependencies(repository: NewsRepositoryImpl()))
    
    var body: some View {
        
        List(viewModel.dependencies.articles) {
            NewsListItemView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
