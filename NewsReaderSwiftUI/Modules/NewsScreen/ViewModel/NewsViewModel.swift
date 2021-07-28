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
    
    @Published var articles: [Article] = [
        Article.getTestable(),
        Article.getTestable(),
        Article.getTestable(),
        Article.getTestable(),
        Article.getTestable(),
        Article.getTestable()
    ]
    
    init() {
        reloadNews()
    }
    
    func reloadNews() {
        let publisher: AnyPublisher<Result<NewsResponse, ErrorType>, Never> =
            RestManager.requestObservable(url: RestEndpoints.news.endpoint(), dataType: NewsResponse.self)
        
        publisher
            .map { [unowned self] result -> [Article] in
                switch result {
                case .success(let response):
                    return self.createArticles(from: response) ?? [Article]()
                case .failure(_):
                    return [Article]()
                }
            }
            .assign(to: &$articles)
    }
    
    func createArticles(from newsResponse: NewsResponse) -> [Article]? {
        var newArticles = [Article]()
        for article in newsResponse.articles {
            newArticles.append(Article(id: UUID(),
                                       title: article.title,
                                       description: article.description,
                                       imagePath: article.urlToImage))
        }
        return newArticles.isEmpty ? nil : newArticles
    }
    
    
}
