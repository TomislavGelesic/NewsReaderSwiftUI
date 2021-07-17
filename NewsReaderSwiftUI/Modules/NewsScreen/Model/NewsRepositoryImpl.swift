//
//  NewsRepositoryImpl.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 17.07.2021..
//

import Foundation
import Combine

class NewsRepositoryImpl: NewsRepository {
    func fetchNews() -> AnyPublisher<Result<News, ErrorType>, Never> {
        let url = RestEndpoints.news.endpoint()
        return RestManager.requestObservable(url: url)
    }
}
