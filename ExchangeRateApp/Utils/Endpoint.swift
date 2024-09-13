//
//  Endpoint.swift
//  ExchangeRateApp
//
//  Created by test on 9/13/24.
//

import Foundation

enum Endpoint {
    case `default`
    case withSymbols
    
    private var baseURL: URL {
        URL(string: "https://api.exchangeratesapi.io/v1/latest")!
    }
    
    var url: URL? {
        baseURL.setQueries(query())
    }
    
    func query() -> [String: String] {
        switch self {
        case .default:
            return ["access_key": ""]
            
        case .withSymbols:
            return [
                "symbols" : "GBP,JPY,USD,INR",
                "access_key": ""
            ]
        }
    }
}
