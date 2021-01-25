//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Alberto Garcia Paul on 25/01/21.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
