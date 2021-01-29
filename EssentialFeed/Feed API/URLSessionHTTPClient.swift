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
            if let error = error {
                completion(.failure(error))
            } else if let data = data, let response = response as? HTTPURLResponse {
                completion(.success((data, response)))
            } else {
                completion(.failure(UnexepectedValuesRespresentation()))
            }
        }.resume()
    }
}
