//
//  NewsListItemView.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 16.07.2021..
//

import SwiftUI
import UIKit
import Kingfisher

struct NewsListItemView: View {
    
    var article: Article
    
    var body: some View {
        ZStack {
            NavigationLink(destination: NewsDetails(article: article)) {
                EmptyView()
            }.hidden()
            
            VStack(alignment: .center, spacing: 10) {
                NetworkImage(imageURL: URL(string: article.imagePath),
                             placeholderImage: UIImage(systemName: "applelogo")!)
                    .frame(minWidth: 200, idealWidth: .infinity, maxWidth: .infinity, minHeight: 150, idealHeight: 200, maxHeight: 200)
                    .scaledToFit()
                Text("\(article.title)")
                    .fontWeight(.semibold)
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           alignment: .topLeading
                    )
                    .lineLimit(2)
                    .padding([.leading, .trailing])
                Text("\(article.description)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           alignment: .topLeading
                    )
                    .lineLimit(3)
                    .padding([.leading, .trailing])
            }
        }
    }
}

struct NewsListItemView_Previews: PreviewProvider {
    static var previews: some SwiftUI.View {
        NewsListItemView(article: Article(id: UUID(),
                                          title: "test title",
                                          description: "test text",
                                          imagePath: ""))
    }
}
