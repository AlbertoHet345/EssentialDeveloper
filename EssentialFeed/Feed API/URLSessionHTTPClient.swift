//
//  URLSessionHTTPClient.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 22/12/20.
//

import Foundation

public class URLSessionHTTPClient: HTTPClient {
    private let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    private struct UnexepectedValuesRespresentation: Error {}
    
    public func get(from url: URL, completion: @escaping(HTTPClient.Result) -> Void) {
        session.dataTask(with: url) { data, response, error in
            completion(Result {
                if let error = error {
                    throw error
                } else if let data = data, let response = response as? HTTPURLResponse {
                    return (data, response)
                } else {
                    throw UnexepectedValuesRespresentation()
                }
            })
        }.resume()
    }
}
