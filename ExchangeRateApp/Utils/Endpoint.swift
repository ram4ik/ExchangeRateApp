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
            return ["access_key": "0241dee87c17b289c7f7c657f6c4436f"]
            
        case .withSymbols:
            return [
                "symbols" : "GBP,JPY,USD,INR,EUR,CZK,DKK",
                "access_key": "0241dee87c17b289c7f7c657f6c4436f"
            ]
        }
    }
}
