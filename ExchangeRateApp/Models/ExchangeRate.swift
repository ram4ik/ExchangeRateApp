//
//  ExchangeRate.swift
//  ExchangeRateApp
//
//  Created by test on 9/13/24.
//

import Foundation

struct ExchangeRate: Codable, Identifiable, Equatable {
    let id = UUID()
    let date: String?
    let rates: [String: Double]?
    
    private enum CodingKeys: String, CodingKey {
        case date, rates
    }
}

extension ExchangeRate {
    static var placeholder: ExchangeRate { Self(date: nil, rates: nil) }
}
