//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 20/12/20.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropiate threads, if needed.
    func get(from url: URL, completion: @escaping(HTTPClientResult) -> Void)
}
