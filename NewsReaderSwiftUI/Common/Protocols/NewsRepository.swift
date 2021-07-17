//
//  NewsRepository.swift
//  NewsReaderSwiftUI
//
//  Created by Tomislav Gelesic on 17.07.2021..
//

import Foundation
import Combine

protocol NewsRepository {
    func fetchNews() -> AnyPublisher<Result<News, ErrorType>, Never>
}
