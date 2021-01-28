//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 18/12/20.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping(Result) -> Void)
}
