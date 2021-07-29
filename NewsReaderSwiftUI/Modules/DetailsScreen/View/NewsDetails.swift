//
//  NewsDetails.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 28.07.2021..
//

import SwiftUI

struct NewsDetails: View {
    
    var article: Article
    
    var body: some View {
        VStack {            
            NetworkImage(imageURL: URL(string: article.imagePath),
                         placeholderImage: UIImage(systemName: "photo")!)
            Text(article.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Divider()
            Text(article.description)
                .padding()
            Spacer()
        }.navigationTitle("NewsReaderSwiftUI")
    }
}

struct NewsDetails_Previews: PreviewProvider {
    
    static var previews: some View {
        NewsDetails(article: Article.getTestable())
    }
}
