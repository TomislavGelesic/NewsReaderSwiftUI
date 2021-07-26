//
//  NewsViewModel.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 17.07.2021..
//

import SwiftUI
import Combine
import Alamofire

class NewsViewModel: ObservableObject {
    
    @Published var articles: [Article] = .init()
    
    init() {
        reloadNews()
    }
    
    func reloadNews() {
        AF
            .request(RestEndpoints.news.endpoint())
            .validate()
            .responseData { [unowned self] response in
                if let responseData = response.data {
                    do {
                        let parsedData = try JSONDecoder().decode(NewsResponse.self, from: responseData)
                        if let newArticles = self.createArticles(from: parsedData) {
                            DispatchQueue.main.async {
                                self.articles = newArticles
                            }
                        }
                    }
                    catch { }
                }
            }
    }
    
    func createArticles(from newsResponse: NewsResponse) -> [Article]? {
        var newArticles = [Article]()
        for article in newsResponse.articles {
            newArticles.append(Article(id: UUID(),
                                       title: article.title,
                                       text: article.description,
                                       imagePath: article.urlToImage))
        }
        return newArticles.isEmpty ? nil : newArticles
    }
    
    
}
