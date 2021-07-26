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
    
    var item: Article
    
    var body: some View {
        HStack(spacing: 15) {
            NetworkImage(imageURL: URL(string: item.imagePath),
                         placeholderImage: UIImage(systemName: "applelogo")!)
                .scaledToFit()
                .frame(width: 100)
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                Text("\(item.title)")
                    .fontWeight(.semibold).frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .topLeading
                    )
                Text("\(item.text)")
                    .font(.subheadline)
                    .foregroundColor(.secondary).frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .topLeading
                    )
                Spacer()
            }
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .padding([.top, .bottom])
    }
}
