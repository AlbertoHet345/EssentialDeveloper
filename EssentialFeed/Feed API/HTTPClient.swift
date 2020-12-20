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
    func get(from url: URL, completion: @escaping(HTTPClientResult) -> Void)
}
